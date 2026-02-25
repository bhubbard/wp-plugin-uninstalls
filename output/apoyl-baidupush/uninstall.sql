-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('apoyl-baidupush-settings', 'apoyl_baidupush_db_version');

