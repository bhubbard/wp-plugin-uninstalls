#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'helpie-faq'
wp option delete 'helpie_faq_slug_updated'
wp option delete 'helpie_faq_slug_changed_from'
wp option delete 'helpie_faq_group_slug_changed_from'
wp option delete 'helpie_version'
wp option delete 'helpie_upgrades'
wp option delete 'tablesome_version'
wp option delete 'tablesome_upgrades'
wp option delete 'csf_demo_mode'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'helpie_faq/track_events'
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'click_counter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'click_counter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'click_counter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'click_counter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'faq_group_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'faq_group_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'faq_group_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'faq_group_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'helpie_menu_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'helpie_menu_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'helpie_menu_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'helpie_menu_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'helpie_woo_metabox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'helpie_woo_metabox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'helpie_woo_metabox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'helpie_woo_metabox'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'helpie_faq_group_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'helpie_faq_group_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'helpie_faq_group_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'helpie_faq_group_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'question_types'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'question_types'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'question_types'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'question_types'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'helpie_faq_group_old_terms'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'helpie_faq_group_old_terms'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'helpie_faq_group_old_terms'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'helpie_faq_group_old_terms'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%'"
