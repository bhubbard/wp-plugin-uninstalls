#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'icegram_sample_data_imported'
wp option delete 'icegram_cache_compatibility'
wp option delete 'active_sitewide_plugins'
wp option delete 'ig_mailer_is_promotion_notice_dismissed'
wp option delete 'ig_mailer_is_tried'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_icegram'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_date'"
wp option delete '_icegram_activation_redirect'
wp option delete 'icegram_db_version'
wp option delete 'ig_last_gallery_items'
wp option delete 'requested_gallery_item_with_ajax'
wp option delete 'ig_cat_list'
wp option delete 'icegram_share_love'
wp option delete 'icl_sitepress_settings'
wp option delete 'ig_imported_gallery_items'
wp option delete 'ig_is_onboarding_completed'
wp option delete 'ig_engage_plan'
wp option delete 'ig_trial_started_at'
wp option delete 'ig_opted_trial'
wp option delete 'ig_trial_feature_recover'
wp option delete 'ig_trial_campaign_id'
wp option delete 'ig_trial_message_ids'
wp option delete 'ig_trial_to_premium_notice_date'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracker_activated'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_installed_on'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp option delete 'ig_installed_on'
wp option delete 'ig_allow_tracking'
wp option delete 'ig_offer_bfcm_2025_icegram'
wp option delete 'ig_new_admin_ui_icegram'

# Delete Transients
wp transient delete 'ig_last_gallery_item_update'
wp transient delete 'ig_trial'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'campaign_preview'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'campaign_preview'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'campaign_preview'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'campaign_preview'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'icegram_campaign_target_rules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'icegram_campaign_target_rules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'icegram_campaign_target_rules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'icegram_campaign_target_rules'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'icegram_message_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'icegram_message_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'icegram_message_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'icegram_message_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'icegram_message_preview_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'icegram_message_preview_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'icegram_message_preview_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'icegram_message_preview_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'messages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'messages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'messages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'messages'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'icegram_campaign_target_pages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'icegram_campaign_target_pages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'icegram_campaign_target_pages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'icegram_campaign_target_pages'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'icegram_campaign_exclude_target_pages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'icegram_campaign_exclude_target_pages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'icegram_campaign_exclude_target_pages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'icegram_campaign_exclude_target_pages'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'icegram_trial_custom_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'icegram_trial_custom_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'icegram_trial_custom_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'icegram_trial_custom_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_time'"
