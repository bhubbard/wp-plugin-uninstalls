-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('admin_instant_search_settings_polyplugins', 'admin_instant_search_notice_dismissed_polyplugins', 'admin_instant_search_version_polyplugins', 'admin_instant_search_indexes_polyplugins');

