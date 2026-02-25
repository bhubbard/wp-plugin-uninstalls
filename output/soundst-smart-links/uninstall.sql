-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jal_db_version', 'smart_links_submenu_page', 'Smartlink_postorder_control');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('Smartlink_postorder');
DELETE FROM wp_usermeta WHERE meta_key IN ('Smartlink_postorder');
DELETE FROM wp_termmeta WHERE meta_key IN ('Smartlink_postorder');
DELETE FROM wp_commentmeta WHERE meta_key IN ('Smartlink_postorder');

