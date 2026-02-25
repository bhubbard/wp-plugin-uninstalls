-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('libro_setting_page', 'libro_setting_url', 'rt_libro_db_version');

