-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_jv_prg_rg_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp_jv_user_rg', 'wp_jv_post_rg');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp_jv_user_rg', 'wp_jv_post_rg');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp_jv_user_rg', 'wp_jv_post_rg');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp_jv_user_rg', 'wp_jv_post_rg');

