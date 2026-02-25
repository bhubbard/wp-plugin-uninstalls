#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp-benchmark-io-settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'benchmark_option_%'"
wp option delete 'wp-benchmark-io-running'
wp option delete 'wp-benchmark-io-history'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_benchmark_transient_%' OR option_name LIKE '_site_transient_benchmark_transient_%'"

