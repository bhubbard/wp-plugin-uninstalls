#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'trp_license_status'
wp option delete 'trp_advanced_settings'
wp option delete 'trp_settings'
wp option delete 'trp_add_ons_settings'
wp option delete 'trp_license_key'
wp option delete 'trp_license_details'
wp option delete 'trp_plugin_optin'
wp option delete 'trp_machine_translated_characters'
wp option delete 'trp_db_errors'
wp option delete 'trp_machine_translation_settings'
wp option delete 'trp_language_switcher_settings'
wp option delete 'trp_db_stored_data'
wp option delete 'trp_machine_translation_counter'
wp option delete 'trp_updated_database_gettext_original_id_update'
wp option delete 'trp_migrate_old_slug_to_new_parent_and_translate_slug_table_term_meta_284'
wp option delete 'trp_plugin_version'
wp option delete 'trp_show_error_db_message'
wp option delete 'trp_remove_duplicate_gettext_rows'
wp option delete 'trp_remove_duplicate_dictionary_rows'
wp option delete 'trp_remove_duplicate_untranslated_dictionary_rows'
wp option delete 'trp_remove_cdata_original_and_dictionary_rows'
wp option delete 'trp_remove_untranslated_links_dictionary_rows'
wp option delete 'trp_replace_original_id_null'
wp option delete 'trp_updated_database_original_id_insert_166'
wp option delete 'trp_updated_database_original_id_cleanup_166'
wp option delete 'trp_updated_database_original_id_update_166'
wp option delete 'trp_regenerate_original_meta_table'
wp option delete 'trp_clean_original_meta_table'
wp option delete 'trp_original_strings_table_for_recovery'
wp option delete 'woocommerce_permalinks'
wp option delete 'trp_migrate_old_slug_to_new_parent_and_translate_slug_table_post_type_and_tax_284'
wp option delete 'trp_migrate_old_slug_to_new_parent_and_translate_slug_table_post_meta_284'
wp option delete 'trp_ls_v2_migrated_from_legacy'
wp option delete 'et_divi'
wp option delete 'trp_ald_settings'
wp option delete 'translatepress_avg_affiliate_id'
wp option delete 'translatepress_affiliate_id'
wp option delete 'trp_gettext_normalized'
wp option delete 'trp_gettext_scan_paths_completed'
wp option delete 'trp_onboarding_started'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'trp_checked_licence'
wp transient delete 'trp_debug_force_check_license_request'
wp transient delete 'trp_debug_force_check_license_response'
wp transient delete 'trp_debug_activate_license_request'
wp transient delete 'trp_debug_activate_license_response'
wp transient delete 'trp_machine_translation_counter_safety_reset'
wp transient delete 'trp_mtapi_cached_quota'
wp transient delete 'trp_checked_if_site_meets_conditions_for_review'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_processed_original_string_meta_post_id_for_%' OR option_name LIKE '_site_transient_processed_original_string_meta_post_id_for_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_tp_default_language_wc_permalink_structure_%' OR option_name LIKE '_site_transient_tp_default_language_wc_permalink_structure_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_tp_current_language_wc_permalink_structure_%' OR option_name LIKE '_site_transient_tp_current_language_wc_permalink_structure_%'"
wp transient delete 'trp_onboarding_previous_step'
wp transient delete 'trp_onboarding_errors'
wp transient delete 'trp_gettext_search'

# Clear Cron Jobs
wp cron event delete 'trp_plugin_optin_sync'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_trp_dismissed_gettext_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_trp_dismissed_gettext_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_trp_dismissed_gettext_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_trp_dismissed_gettext_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dismiss_notification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dismiss_notification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dismiss_notification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dismiss_notification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'trp_language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'trp_language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'trp_language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'trp_language'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'trp_always_use_this_language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'trp_always_use_this_language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'trp_always_use_this_language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'trp_always_use_this_language'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'trp_editor_user_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'trp_editor_user_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'trp_editor_user_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'trp_editor_user_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'trp_dismissed_admin_bar_notifications'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'trp_dismissed_admin_bar_notifications'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'trp_dismissed_admin_bar_notifications'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'trp_dismissed_admin_bar_notifications'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'trp_email_course_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'trp_email_course_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'trp_email_course_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'trp_email_course_dismissed'"
