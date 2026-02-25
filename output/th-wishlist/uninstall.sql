-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('thwl_page_id', 'thwl_settings', 'thwl_install_checked');

