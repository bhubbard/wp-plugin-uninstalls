-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simplybook_rest_api_notice_dismissed', 'simplybook_onboarding_completed', 'simplybook_completed_step', 'simplybook_complete_onboarding_notice_dismissed_time', 'simplybook_complete_onboarding_notice_choice', 'simplybook_activation_unix_timestamp', 'simplybook_review_notice_dismissed_time', 'simplybook_review_notice_choice', 'simplybook_company_registration_start_time', 'simplybook_persistent_cache', 'simplybook_options', '_simplybook_current_version', 'simplybook_registration_failed', 'simplybook_company_data', 'simplybook_temporary_onboarding_data', 'simplybook_calendar_published_notification_completed', 'simplybook_calendar_published_task_completed', 'simplybook_token_error', 'simplybook_refresh_company_token_expiration', 'simplybook_company_login', 'simplybook_api_status', 'simplybook_cached_theme_list', 'simplybook_cached_timeline_list', 'simplybookMePl_widget_settings', 'simplybook_callback_url_expires', 'simplybook_callback_url', 'simplybook_activation_flag', 'simplybook_token_refresh', 'simplybook_refresh_token_expiration', 'simplybook_token', 'simplybook_activation_source_page', 'simplybook_login_url_request_count', 'simplybook_login_url_first_request_time', 'simply_book_attempt_count');
DELETE FROM wp_options WHERE option_name LIKE '%_tour_started';
DELETE FROM wp_options WHERE option_name LIKE '%_tour_shown_once';
DELETE FROM wp_options WHERE option_name LIKE 'simplybookMePl_%';
DELETE FROM wp_options WHERE option_name LIKE '%_redirect_to_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_data');

