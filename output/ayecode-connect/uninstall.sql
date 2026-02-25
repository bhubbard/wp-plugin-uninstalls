-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_acdi_replacement_cat_ids', '_acdi_page_featured_images', 'elementor_active_kit', '_acdi_replacement_post_ids', '_acdi_replacement_archive_item_ids', '_acdi_original_elementor_active_kit', 'elementor_pro_theme_builder_conditions', '_acdi_demo_url', 'exup_keys', 'ayecode_turnstile_options', 'ayecode_turnstile_verified', 'whl_page', 'uwp_activation_redirect', 'uwp_setup_wizard_notice', 'ds_no_downgrade', 'ayecode_connect_blog_token', 'ayecode-ui-settings', 'aui_options', 'wp-font-awesome-settings', 'rgmk_google_map_api_key', 'ac-demo-import', 'ac_test_connection', '_gd_activation_redirect', 'gd_social_importer_redirect', 'ayecode_connect_demos', 'geodir_cache_excluded_uris', 'wp-font-awesome-settings-version');
DELETE FROM wp_options WHERE option_name LIKE '%_blog_id';
DELETE FROM wp_options WHERE option_name LIKE '%_licences';
DELETE FROM wp_options WHERE option_name LIKE '%_licence_sync';
DELETE FROM wp_options WHERE option_name LIKE '%_activation_secret';
DELETE FROM wp_options WHERE option_name LIKE '%_support';
DELETE FROM wp_options WHERE option_name LIKE '%_support_user';
DELETE FROM wp_options WHERE option_name LIKE '%_connected_user_signatures';
DELETE FROM wp_options WHERE option_name LIKE '%_connected_name';
DELETE FROM wp_options WHERE option_name LIKE '%_connected_username';
DELETE FROM wp_options WHERE option_name LIKE '%_connected_email';
DELETE FROM wp_options WHERE option_name LIKE '%_connected_user_id';
DELETE FROM wp_options WHERE option_name LIKE '%_blog_token';
DELETE FROM wp_options WHERE option_name LIKE '%_url';
DELETE FROM wp_options WHERE option_name LIKE '%_connected_user_sites';
DELETE FROM wp_options WHERE option_name LIKE '%_remote_user_info';
DELETE FROM wp_options WHERE option_name LIKE '%_site_moved';
DELETE FROM wp_options WHERE option_name LIKE '%_support_user_key';
DELETE FROM wp_options WHERE option_name LIKE '%_activation_secret';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ct_cat_icon', 'ct_cat_default_img', '_ayecode_demo', '_elementor_data', '_menu_item_menu_item_parent', '_ayecode_demo_img');
DELETE FROM wp_usermeta WHERE meta_key IN ('ct_cat_icon', 'ct_cat_default_img', '_ayecode_demo', '_elementor_data', '_menu_item_menu_item_parent', '_ayecode_demo_img');
DELETE FROM wp_termmeta WHERE meta_key IN ('ct_cat_icon', 'ct_cat_default_img', '_ayecode_demo', '_elementor_data', '_menu_item_menu_item_parent', '_ayecode_demo_img');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ct_cat_icon', 'ct_cat_default_img', '_ayecode_demo', '_elementor_data', '_menu_item_menu_item_parent', '_ayecode_demo_img');

