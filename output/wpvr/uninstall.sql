-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpvr_edd_license_status', 'wpvr_feed_review_request', 'wpvr_editor_active', 'wpvr_author_active', 'wpvr_fontawesome_disable', 'wpvr_cardboard_disable', 'wpvr_webp_conversion', 'mobile_media_resize', 'high_res_image', 'dis_on_hover', 'wpvr_frontend_notice', 'wpvr_frontend_notice_area', 'wpvr_script_control', 'wpvr_script_list', 'wpvr_video_script_control', 'wpvr_video_script_list', 'dokan_vendor_active', 'wpvr_black_friday_notice', '_wpvr_eid_al_adha_2024', 'wpvr_posthog_access_enabled', 'wpvr_opt_in_toggle', 'wpvr_allow_tracking', 'wpvr_is_playground', 'wpvr_edd_license_key', 'wpvr_enable_woocommerce', 'wpvr_plugin_installed', 'wpvr_version', 'wpvr_installed_time', 'wpvr_industry_name', 'wpvr_setup_wizard_started', 'wpvr_setup_wizard_completed', 'wpvr_first_strike_completed', 'wpvr_last_core_action', 'test-telemetry-plugin_allow_tracking', 'wpvr_sell_international_mother_language_day_2026_notification_bar', 'wpvr_warning', 'update_plugins', '_wpvr_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';
DELETE FROM wp_options WHERE option_name LIKE '%_last_core_action';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('panodata', 'wpvr_checklist', 'wpvr_created_from_wizard', 'wpvr_wizard_industry', '_wpvr_allowed_roles_levels', 'wpvr_is_demo_tour', '_wpvr_tour_embedded_tracked');
DELETE FROM wp_usermeta WHERE meta_key IN ('panodata', 'wpvr_checklist', 'wpvr_created_from_wizard', 'wpvr_wizard_industry', '_wpvr_allowed_roles_levels', 'wpvr_is_demo_tour', '_wpvr_tour_embedded_tracked');
DELETE FROM wp_termmeta WHERE meta_key IN ('panodata', 'wpvr_checklist', 'wpvr_created_from_wizard', 'wpvr_wizard_industry', '_wpvr_allowed_roles_levels', 'wpvr_is_demo_tour', '_wpvr_tour_embedded_tracked');
DELETE FROM wp_commentmeta WHERE meta_key IN ('panodata', 'wpvr_checklist', 'wpvr_created_from_wizard', 'wpvr_wizard_industry', '_wpvr_allowed_roles_levels', 'wpvr_is_demo_tour', '_wpvr_tour_embedded_tracked');

