-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('g11n_default_email', 'g11n_agree_to_leave_email', 'g11n_default_lang', 'g11n_additional_lang', 'g11n_server_url', 'g11n_server_user', 'g11n_server_token', 'g11n_server_project', 'g11n_server_version', 'g11n_server_trunksize', 'g11n_l10n_props_blogname', 'g11n_l10n_props_blogdescription', 'g11n_l10n_props_tax', 'g11n_site_lang_cookie', 'g11n_site_lang_session', 'g11n_site_lang_query_string', 'g11n_site_lang_browser', 'g11n_switcher_tagline', 'g11n_switcher_post', 'g11n_switcher_title', 'g11n_switcher_sidebar', 'g11n_switcher_floating', 'g11n_switcher_type', 'g11n_using_google_tookit', 'g11n_auto_pullpush_translation', 'g11n_resource_file_location', 'g11n_editor_choice', 'g11n_seo_url_enable', 'g11n_seo_url_label', 'g11n_translate_slug', 'g11n_enable_html_translator', 'g11n_slugs_mappings_config', 'g11n_slugs_mappings_config_extra', 'g11n_l10n_props_posts', 'g11n_l10n_props_pages', 'woocommerce_cod_settings', 'woocommerce_cheque_settings', 'tmy_g11n_sites_activated');
DELETE FROM wp_options WHERE option_name LIKE 'g11n_l10n_props_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('orig_post_id', 'g11n_tmy_orig_type', 'g11n_tmy_lang_status', 'g11n_tmy_lang', 'translation_push_status', '_yoast_wpseo_metadesc', '_yoast_wpseo_metadesc_g11n_post_id', 'option_name', 'tmy_order_lang_code');
DELETE FROM wp_usermeta WHERE meta_key IN ('orig_post_id', 'g11n_tmy_orig_type', 'g11n_tmy_lang_status', 'g11n_tmy_lang', 'translation_push_status', '_yoast_wpseo_metadesc', '_yoast_wpseo_metadesc_g11n_post_id', 'option_name', 'tmy_order_lang_code');
DELETE FROM wp_termmeta WHERE meta_key IN ('orig_post_id', 'g11n_tmy_orig_type', 'g11n_tmy_lang_status', 'g11n_tmy_lang', 'translation_push_status', '_yoast_wpseo_metadesc', '_yoast_wpseo_metadesc_g11n_post_id', 'option_name', 'tmy_order_lang_code');
DELETE FROM wp_commentmeta WHERE meta_key IN ('orig_post_id', 'g11n_tmy_orig_type', 'g11n_tmy_lang_status', 'g11n_tmy_lang', 'translation_push_status', '_yoast_wpseo_metadesc', '_yoast_wpseo_metadesc_g11n_post_id', 'option_name', 'tmy_order_lang_code');

