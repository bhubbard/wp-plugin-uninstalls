-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yp_purchase_code', 'wt_css', 'yp-output-option', 'yp-draft-mode', 'yp-default-global', 'wt_search_css', 'wt_tag_css', 'wt_category_css', 'wt_archive_css', 'wt_author_css', 'wt_404_css', 'wt_home_css', 'wt_login_css', 'wt_register_css', 'wt_lostpassword_css', 'yp_selector_comments', 'wt_styles', 'yp_new_custom_CSS_dir', 'yp_700_db_updateX', 'yp_live_view_css_data', 'wt_author_styles', 'wt_tag_styles', 'wt_category_styles', 'wt_archive_styles', 'wt_404_styles', 'wt_search_styles', 'wt_home_styles', 'yp_revisions', 'wyp_plugin_active_notice', 'wyp_welcome_screen_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE '%_css';
DELETE FROM wp_options WHERE option_name LIKE 'yp_anim_%';
DELETE FROM wp_options WHERE option_name LIKE 'yp_op_%';
DELETE FROM wp_options WHERE option_name LIKE '%_styles';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wt_css', '_wt_styles');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wt_css', '_wt_styles');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wt_css', '_wt_styles');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wt_css', '_wt_styles');

