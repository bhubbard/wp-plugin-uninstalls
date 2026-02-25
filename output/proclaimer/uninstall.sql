-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('proclaimer_auth_token', 'proclaimer_instance_id', 'proclaimer_api_key', 'proclaimer-banner-human', 'proclaimer-large-human', 'proclaimer-small-human', 'proclaimer_subscription_status', 'proclaimer_session_lock', 'proclaimer_session_data');
DELETE FROM wp_options WHERE option_name LIKE 'proclaimer_tos_accepted_%';
DELETE FROM wp_options WHERE option_name LIKE 'proclaimer_validation_lock_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('proclaimer_result', 'proclaimer_last_content', 'proclaimer_last_check', 'proclaimer_error_message');
DELETE FROM wp_usermeta WHERE meta_key IN ('proclaimer_result', 'proclaimer_last_content', 'proclaimer_last_check', 'proclaimer_error_message');
DELETE FROM wp_termmeta WHERE meta_key IN ('proclaimer_result', 'proclaimer_last_content', 'proclaimer_last_check', 'proclaimer_error_message');
DELETE FROM wp_commentmeta WHERE meta_key IN ('proclaimer_result', 'proclaimer_last_content', 'proclaimer_last_check', 'proclaimer_error_message');

