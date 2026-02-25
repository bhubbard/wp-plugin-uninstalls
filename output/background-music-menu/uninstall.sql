-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('background-music-menu', 'bmm_wp_last_menu_id');
DELETE FROM wp_options WHERE option_name LIKE 'bmm_wp_table_change_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('description-nonce', 'menu-item');
DELETE FROM wp_usermeta WHERE meta_key IN ('description-nonce', 'menu-item');
DELETE FROM wp_termmeta WHERE meta_key IN ('description-nonce', 'menu-item');
DELETE FROM wp_commentmeta WHERE meta_key IN ('description-nonce', 'menu-item');

