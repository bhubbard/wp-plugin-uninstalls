-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sbi_plugin_do_activation_redirect', 'cff_plugin_do_activation_redirect', 'trustpulse_api_plugin_do_activation_redirect', 'simpay_customer_journey_start', 'duplicator_redirect_to_welcome', 'userfeedback_license', 'userfeedback_parsed_addons', 'wpforms_activation_redirect', 'aioseo_activation_redirect', 'userfeedback_onboarding_complete', 'userfeedback_notices', 'userfeedback_over_time', 'userfeedback_review', 'userfeedback_tracking_data', 'userfeedback_usage_tracking_config', 'userfeedback_debug_usage_tracking', 'userfeedback_usage_tracking_last_checkin', 'uncannyautomator_source', 'automator_reporting', 'userfeedback_current_version', 'userfeedback_db_version', 'userfeedback_version_upgraded_from', 'userfeedback_license_updates', 'userfeedback_network_license_updates', 'userfeedback_network_license', 'userfeedback_shareasale_id', 'userfeedback_admin_menu_tooltip', 'userfeedback_connect', 'userfeedback_connect_token', 'userfeedback_timestamp_fixed', '_userfeedback_addons', '_monsterinsights_activation_redirect', '_exactmetrics_activation_redirect', 'wp_mail_smtp_activation_redirect', '_rafflepress_welcome_screen_activation_redirect', '_seedprod_welcome_screen_activation_redirect', 'searchwp_live_search_activation_redirect', 'simpay_activation_redirect', 'charitable_install', 'pushengage_activation_redirect', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count', '_userfeedback_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('userfeedback-dismiss-settings-blurb', '_uf_disable_surveys', '_uf_show_specific_survey');
DELETE FROM wp_usermeta WHERE meta_key IN ('userfeedback-dismiss-settings-blurb', '_uf_disable_surveys', '_uf_show_specific_survey');
DELETE FROM wp_termmeta WHERE meta_key IN ('userfeedback-dismiss-settings-blurb', '_uf_disable_surveys', '_uf_show_specific_survey');
DELETE FROM wp_commentmeta WHERE meta_key IN ('userfeedback-dismiss-settings-blurb', '_uf_disable_surveys', '_uf_show_specific_survey');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%ai-summary-upsell';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%ai-summary-upsell';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%ai-summary-upsell';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%ai-summary-upsell';

