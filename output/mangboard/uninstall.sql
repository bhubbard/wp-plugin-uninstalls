-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mb_locale', 'mb_admin_locale', 'mb_install_product', 'mb_admin_check_data', 'mb_user_synchronize_index', 'mb_security_mode', 'mb_skin_model', 'mb_latest_board_data', 'mb_latest_comment_data');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mb_post_seo', 'mb_thumbnail', 'mb_user_phone', '_elementor_edit_mode', '_elementor_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('mb_post_seo', 'mb_thumbnail', 'mb_user_phone', '_elementor_edit_mode', '_elementor_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('mb_post_seo', 'mb_thumbnail', 'mb_user_phone', '_elementor_edit_mode', '_elementor_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mb_post_seo', 'mb_thumbnail', 'mb_user_phone', '_elementor_edit_mode', '_elementor_data');

