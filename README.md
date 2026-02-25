# WordPress Plugin Uninstaller Generator

The **WordPress Plugin Uninstaller Generator** is a high-performance, concurrent TypeScript toolkit designed to analyze every plugin in the WordPress.org repository. It identifies poor database citizenship (orphaned settings, metadata, custom tables, and cron jobs left behind after a plugin is deleted) and automatically generates clean-up scripts (PHP, SQL, WP-CLI) for them.

## The Problem
Over **83%** of all WordPress plugins on the official repository do not provide an `uninstall.php` script to clean up their footprint. Over **40%** of all plugins natively litter the database with orphan data after they are deleted by an admin.

After processing 43,640 valid plugins with this tool, here are the aggregated statistics:

### Breakdown of Orphaned Database Items
* **Options/Settings:** 26,912 plugins (61.70%)
* **Transients/Cache:** 6,483 plugins (14.86%)
* **Cron Jobs:** 4,408 plugins (10.11%)
* **Post/User Metadata:** 13,436 plugins (30.81%)
* **Custom Database Tables:** 4 plugins (0.01%)
* **Nothing Found:** 12,490 plugins (28.64%) - Clean by default!

### Top 10 Worst Database Offenders
*(Most items left behind without an Uninstaller)*
1. `mojito-shipping` (752 items)
2. `woocommerce-exporter` (673 items)
3. `woocommerce` (600 items)
4. `wp-easycart` (600 items)
5. `wc-frontend-manager` (493 items)
6. `user-registration` (484 items)
7. `push-notification-for-post-and-buddypress` (475 items)
8. `lfecfdi-para-woocommerce` (439 items)
9. `projectopia-core` (428 items)
10. `woocommerce-jetpack` (413 items)

---

## How It Works
The `ts-uninstaller` engine downloads and streams plugin ZIPs directly into memory from WordPress.org. Without ever writing the ZIP to disk, it uses an Abstract Syntax Tree (AST) engine (`php-parser`) to safely parse every included PHP file and extract known function vectors like `add_option`, `set_transient`, and `$wpdb->query`. 

It uses exponential backoff and `p-limit` concurrency arrays to parse tens of thousands of plugins per hour, while automatically bypassing core WordPress configurations.

## Setup & Installation

1. Install Node.js (v18+ recommended).
2. Clone this repository and configure your `all-slugs.txt` file (one plugin slug per line).
3. Install dependencies:
   ```bash
   cd ts-uninstaller
   npm install
   ```

## Usage

**1. Generate Uninstall Scripts:**
Run the asynchronous processor. This will iterate over all slugs, analyze the AST, and drop the output artifacts into the `../output/` folder.
```bash
npx ts-node src/index.ts
```

**2. Analyze Statistics:**
Aggregate the stats from all the `findings.json` objects inside your generated `output` folders.
```bash
npx ts-node src/analyze_stats.ts
```

## Generated Artifacts
For each analyzed plugin, the tool generates a dedicated subdirectory (e.g., `output/elementor/`) containing:

* **`findings.json`**: The raw AST data structure detailing exactly what the plugin leaves behind.
* **`uninstall.php`**: A drop-in ready PHP file utilizing `delete_option()`, `delete_metadata()`, etc.
* **`uninstall.sql`**: A raw, batched SQL script to directly cull the orphans via `phpMyAdmin`.
* **`uninstall.sh`**: A shell script utilizing WP-CLI commands (`wp option delete`).
