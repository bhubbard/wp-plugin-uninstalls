-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('iworks_wp_sitemap_control_taxonomies');
DELETE FROM wp_options WHERE option_name LIKE '%last_used_tab';
DELETE FROM wp_options WHERE option_name LIKE '%cache_stamp';
DELETE FROM wp_options WHERE option_name LIKE '%version';
DELETE FROM wp_options WHERE option_name LIKE '%flush_rules';

