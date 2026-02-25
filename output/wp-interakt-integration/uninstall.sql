-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('interakt_plugin_options_name', 'interakt_mail_options', 'interakt_contactform_options', 'interakt_contactform_msgs_options', 'interakt_manageapps_options', 'interaktSyncedUsers', 'nav_menu_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_price', '_regular_price', '_sale_price', '_transaction_id', '_menu_item_menu_item_parent', 'nav_menu_recently_edited');
DELETE FROM wp_usermeta WHERE meta_key IN ('_price', '_regular_price', '_sale_price', '_transaction_id', '_menu_item_menu_item_parent', 'nav_menu_recently_edited');
DELETE FROM wp_termmeta WHERE meta_key IN ('_price', '_regular_price', '_sale_price', '_transaction_id', '_menu_item_menu_item_parent', 'nav_menu_recently_edited');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_price', '_regular_price', '_sale_price', '_transaction_id', '_menu_item_menu_item_parent', 'nav_menu_recently_edited');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'billing_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'billing_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'billing_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'billing_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'shipping_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'shipping_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'shipping_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'shipping_%';

