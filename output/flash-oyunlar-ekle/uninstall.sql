-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('flas_game_option');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('flash_game_post_shortcode_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('flash_game_post_shortcode_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('flash_game_post_shortcode_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('flash_game_post_shortcode_key');

