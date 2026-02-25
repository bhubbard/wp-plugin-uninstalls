-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mobile_smart_app_banner_review_notice_dismissed', 'mobile_smart_app_banner_user_already_reviewed', 'mobile_smart_app_banner_user_needs_help', 'mobile_smart_app_banner_activation_date', 'mobile_smart_app_banner_notice_dismiss_count', 'mobile_smart_app_banner_options');

