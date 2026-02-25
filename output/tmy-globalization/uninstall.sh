#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'g11n_default_email'
wp option delete 'g11n_agree_to_leave_email'
wp option delete 'g11n_default_lang'
wp option delete 'g11n_additional_lang'
wp option delete 'g11n_server_url'
wp option delete 'g11n_server_user'
wp option delete 'g11n_server_token'
wp option delete 'g11n_server_project'
wp option delete 'g11n_server_version'
wp option delete 'g11n_server_trunksize'
wp option delete 'g11n_l10n_props_blogname'
wp option delete 'g11n_l10n_props_blogdescription'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'g11n_l10n_props_%'"
wp option delete 'g11n_l10n_props_tax'
wp option delete 'g11n_site_lang_cookie'
wp option delete 'g11n_site_lang_session'
wp option delete 'g11n_site_lang_query_string'
wp option delete 'g11n_site_lang_browser'
wp option delete 'g11n_switcher_tagline'
wp option delete 'g11n_switcher_post'
wp option delete 'g11n_switcher_title'
wp option delete 'g11n_switcher_sidebar'
wp option delete 'g11n_switcher_floating'
wp option delete 'g11n_switcher_type'
wp option delete 'g11n_using_google_tookit'
wp option delete 'g11n_auto_pullpush_translation'
wp option delete 'g11n_resource_file_location'
wp option delete 'g11n_editor_choice'
wp option delete 'g11n_seo_url_enable'
wp option delete 'g11n_seo_url_label'
wp option delete 'g11n_translate_slug'
wp option delete 'g11n_enable_html_translator'
wp option delete 'g11n_slugs_mappings_config'
wp option delete 'g11n_slugs_mappings_config_extra'
wp option delete 'g11n_l10n_props_posts'
wp option delete 'g11n_l10n_props_pages'
wp option delete 'woocommerce_cod_settings'
wp option delete 'woocommerce_cheque_settings'
wp option delete 'tmy_g11n_sites_activated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'orig_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'orig_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'orig_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'orig_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'g11n_tmy_orig_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'g11n_tmy_orig_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'g11n_tmy_orig_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'g11n_tmy_orig_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'g11n_tmy_lang_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'g11n_tmy_lang_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'g11n_tmy_lang_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'g11n_tmy_lang_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'g11n_tmy_lang'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'g11n_tmy_lang'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'g11n_tmy_lang'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'g11n_tmy_lang'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'translation_push_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'translation_push_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'translation_push_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'translation_push_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc_g11n_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc_g11n_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc_g11n_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc_g11n_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'option_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'option_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'option_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'option_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tmy_order_lang_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tmy_order_lang_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tmy_order_lang_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tmy_order_lang_code'"
