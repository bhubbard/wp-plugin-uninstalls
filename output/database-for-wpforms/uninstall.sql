-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('WPFormsDB_view_install_date', 'wpformsdb_view_ignore_notice', 'wpformsdb_add_ons_feed');

