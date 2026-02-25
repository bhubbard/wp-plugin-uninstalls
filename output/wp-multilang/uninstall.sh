#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpm_show_untranslated_strings'
wp option delete 'wpm_meta_box_errors'
wp option delete 'wpm_admin_notices'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpm_admin_notice_%'"
wp option delete 'wpm_db_version'
wp option delete 'wpm_custom_post_types'
wp option delete 'wpm_admin_footer_text_rated'
wp option delete 'wpm_site_language'
wp option delete 'wpm_use_redirect'
wp option delete 'wpm_use_prefix'
wp option delete 'wpm_string_translation'
wp option delete 'wpm_base_translation'
wp option delete 'wpm_uninstall_translations'
wp option delete 'wpm_elementor_compatibility_free'
wp option delete 'wpm_divi_compatibility_free'
wp option delete 'wpm_allow_auto_override'
wp option delete 'wpm_languages'
wp option delete 'qtranslate_term_name'
wp option delete 'wpmpro_upgrade_license'
wp option delete 'wpm_hide_newsletter'
wp option delete 'wpm_openai_settings'
wp option delete 'wpm_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpm_%'"
wp option delete 'wpm_config'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpm_bulk_translate_errors_%' OR option_name LIKE '_site_transient_wpm_bulk_translate_errors_%'"
wp transient delete 'wpm_installing'
wp transient delete 'saswp_transient_schema_ids'
wp transient delete 'wc_attribute_taxonomies'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Clear Cron Jobs
wp cron event delete 'wpm_flush_rewrite_rules'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_languages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_languages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_languages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_languages'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_languages_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_languages_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_languages_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_languages_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_languages_show'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_languages_show'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_languages_show'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_languages_show'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'edit_lang'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'edit_lang'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'edit_lang'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'edit_lang'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_translate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_translate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_translate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_translate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data_translate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data_translate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data_translate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data_translate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpm_translated_comments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpm_translated_comments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpm_translated_comments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpm_translated_comments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_lang'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_lang'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_lang'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_lang'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpm_lang'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpm_lang'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpm_lang'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpm_lang'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
