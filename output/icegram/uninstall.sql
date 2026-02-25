-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('icegram_sample_data_imported', 'icegram_cache_compatibility', 'active_sitewide_plugins', 'ig_mailer_is_promotion_notice_dismissed', 'ig_mailer_is_tried', '_icegram_activation_redirect', 'icegram_db_version', 'ig_last_gallery_items', 'requested_gallery_item_with_ajax', 'ig_cat_list', 'icegram_share_love', 'icl_sitepress_settings', 'ig_imported_gallery_items', 'ig_is_onboarding_completed', 'ig_engage_plan', 'ig_trial_started_at', 'ig_opted_trial', 'ig_trial_feature_recover', 'ig_trial_campaign_id', 'ig_trial_message_ids', 'ig_trial_to_premium_notice_date', 'ig_installed_on', 'ig_allow_tracking', 'ig_offer_bfcm_2025_icegram', 'ig_new_admin_ui_icegram', 'ig_last_gallery_item_update', 'ig_trial');
DELETE FROM wp_options WHERE option_name LIKE '%_icegram';
DELETE FROM wp_options WHERE option_name LIKE '%_date';
DELETE FROM wp_options WHERE option_name LIKE '%_tracker_activated';
DELETE FROM wp_options WHERE option_name LIKE '%_installed_on';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name', 'campaign_preview', 'icegram_campaign_target_rules', 'icegram_message_data', 'icegram_message_preview_data', 'messages', 'icegram_campaign_target_pages', 'icegram_campaign_exclude_target_pages', 'icegram_trial_custom_css');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name', 'campaign_preview', 'icegram_campaign_target_rules', 'icegram_message_data', 'icegram_message_preview_data', 'messages', 'icegram_campaign_target_pages', 'icegram_campaign_exclude_target_pages', 'icegram_trial_custom_css');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name', 'campaign_preview', 'icegram_campaign_target_rules', 'icegram_message_data', 'icegram_message_preview_data', 'messages', 'icegram_campaign_target_pages', 'icegram_campaign_exclude_target_pages', 'icegram_trial_custom_css');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name', 'campaign_preview', 'icegram_campaign_target_rules', 'icegram_message_data', 'icegram_message_preview_data', 'messages', 'icegram_campaign_target_pages', 'icegram_campaign_exclude_target_pages', 'icegram_trial_custom_css');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_time';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_time';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_time';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_time';

