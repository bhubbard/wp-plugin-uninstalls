-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('site_labels', 'current_site_label', 'is_monthly', 'plugin_key', 'salpha_valid');

