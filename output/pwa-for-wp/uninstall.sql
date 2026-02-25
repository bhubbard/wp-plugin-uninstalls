-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gravitecnet_option_app_key', 'pwaforwp_settings', 'OneSignalWPSetting', 'wisdom_allow_tracking', 'wisdom_last_track_time', 'pwaforwp_wisdom_block_notice', 'wisdom_collect_email', 'wisdom_admin_emails', 'pwaforwp_review_never', 'pwaforwp_review_notice_bar_close_date', 'autoptimize_cdn_url', 'wph_settings', 'pwaforwp_visibility_settings', 'pwawppro_license_info', 'pwaforwp_update_pre_cache_list', 'pwaforwp_activation_date', 'pwa_token_list', 'pwaforwp_pre_cache_post_ids', 'pwaforwp_admin_notice_transient', '_transient_pwaforwp_restapi_check', 'pwa_uninstall_data', 'pwaforwp_pre_cache_post_ids', 'pwaforwp_restapi_check', 'pwaforwp_file_change_transient', 'pwaforwp_addon_zto7', 'pwaforwp_addons_expired', 'pwaforwp_addons_set_transient', 'plugin_slugs', 'pwaforwp_admin_notice_transient');
DELETE FROM wp_options WHERE option_name LIKE 'wisdom_deactivation_reason_%';
DELETE FROM wp_options WHERE option_name LIKE 'wisdom_deactivation_details_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dismissed_wp_pointers');
DELETE FROM wp_usermeta WHERE meta_key IN ('dismissed_wp_pointers');
DELETE FROM wp_termmeta WHERE meta_key IN ('dismissed_wp_pointers');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dismissed_wp_pointers');

