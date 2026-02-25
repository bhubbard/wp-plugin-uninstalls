-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mythic-wp-key', 'mythic-wp-last_query', 'mythic-wp-last_cron', 'active_sitewide_plugins', 'update_plugins', 'update_themes');

