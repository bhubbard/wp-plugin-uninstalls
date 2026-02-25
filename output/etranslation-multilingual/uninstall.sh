#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'etm_advanced_settings'
wp option delete 'etm_settings'
wp option delete 'etm_db_errors'
wp option delete 'etm_machine_translation_settings'
wp option delete 'etm_db_stored_data'
wp option delete 'etm_updated_database_gettext_original_id_update'
wp option delete 'etm_plugin_version'
wp option delete 'etm_show_error_db_message'
wp option delete 'etm_remove_duplicate_gettext_rows'
wp option delete 'etm_remove_duplicate_untranslated_gettext_rows'
wp option delete 'etm_remove_duplicate_dictionary_rows'
wp option delete 'etm_remove_duplicate_untranslated_dictionary_rows'
wp option delete 'etm_remove_cdata_original_and_dictionary_rows'
wp option delete 'etm_remove_untranslated_links_dictionary_rows'
wp option delete 'etm_updated_database_original_id_insert_166'
wp option delete 'etm_updated_database_original_id_cleanup_166'
wp option delete 'etm_updated_database_original_id_update_166'
wp option delete 'etm_regenerate_original_meta_table'
wp option delete 'etm_clean_original_meta_table'
wp option delete 'etm_original_strings_table_for_recovery'
wp option delete 'woocommerce_permalinks'
wp option delete 'et_divi'
wp option delete 'etranslation_multilingual_avg_affiliate_id'
wp option delete 'etranslation_multilinguals_affiliate_id'
wp option delete 'etm_mt_domains_othermt'
wp option delete 'etm_gettext_normalized'
wp option delete 'etm_gettext_scan_paths_completed'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_processed_original_string_meta_post_id_for_%' OR option_name LIKE '_site_transient_processed_original_string_meta_post_id_for_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_etm_default_language_wc_permalink_structure_%' OR option_name LIKE '_site_transient_etm_default_language_wc_permalink_structure_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_etm_current_language_wc_permalink_structure_%' OR option_name LIKE '_site_transient_etm_current_language_wc_permalink_structure_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dismiss_notification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dismiss_notification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dismiss_notification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dismiss_notification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'etm_language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'etm_language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'etm_language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'etm_language'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'etm_always_use_this_language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'etm_always_use_this_language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'etm_always_use_this_language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'etm_always_use_this_language'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'etm_editor_user_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'etm_editor_user_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'etm_editor_user_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'etm_editor_user_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'locale'"
