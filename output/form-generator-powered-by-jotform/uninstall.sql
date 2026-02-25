-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wordpress_api_key', 'akismet_discard_month', 'akismet_show_user_comments_approved', 'akismet_connectivity_time', 'akismet_spam_count', 'akismet_alert_code', 'akismet_alert_msg', 'akismet_available_servers', 'jc_setting', 'jotform_options', 'jc_option_from_ajax', 'dx_option_from_ajax');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('akismet_result', 'akismet_error', 'akismet_user_result', 'akismet_user', 'akismet_as_submitted', 'akismet_rechecking');
DELETE FROM wp_usermeta WHERE meta_key IN ('akismet_result', 'akismet_error', 'akismet_user_result', 'akismet_user', 'akismet_as_submitted', 'akismet_rechecking');
DELETE FROM wp_termmeta WHERE meta_key IN ('akismet_result', 'akismet_error', 'akismet_user_result', 'akismet_user', 'akismet_as_submitted', 'akismet_rechecking');
DELETE FROM wp_commentmeta WHERE meta_key IN ('akismet_result', 'akismet_error', 'akismet_user_result', 'akismet_user', 'akismet_as_submitted', 'akismet_rechecking');

