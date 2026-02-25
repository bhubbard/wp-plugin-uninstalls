-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tmp-finish-setup', 'tmp-settings', 'taketin-mp-messages', 'tmp-use-tickets', 'tmp-messages', 'tmp-db-version', 'tmp_use_tickets', 'tmp2db_db_version', 'tmp2wp_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_nav_menu_exclude');
DELETE FROM wp_usermeta WHERE meta_key IN ('_nav_menu_exclude');
DELETE FROM wp_termmeta WHERE meta_key IN ('_nav_menu_exclude');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_nav_menu_exclude');

