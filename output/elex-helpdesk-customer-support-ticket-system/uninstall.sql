-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wsdesk_pack', 'wsdesk_setup_wizard', 'elex_last_scheduled_time', 'wsdesk_agent_common_signature', 'wsdesk_scheduled_triggers', 'wsdesk_support_page', 'wsdesk_pay_for_detection_rule', 'wsdesk_pay_for_support_complete_history', 'wsdesk_activation_status', '_wsdesk_welcome_screen_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'wsdesk_version_%';
DELETE FROM wp_options WHERE option_name LIKE '%pay_forsupport_child_of_parent';
DELETE FROM wp_options WHERE option_name LIKE '%wsdesk_pay_for_detection_got';
DELETE FROM wp_options WHERE option_name LIKE '%wsdesk_pay_for_support_histry';
DELETE FROM wp_options WHERE option_name LIKE '%_review_never_ask_again';
DELETE FROM wp_options WHERE option_name LIKE '%_review_will_do_it_later';
DELETE FROM wp_options WHERE option_name LIKE '%_troubleshoot_never_ask_again';
DELETE FROM wp_options WHERE option_name LIKE '%_email';
DELETE FROM wp_options WHERE option_name LIKE '%_licence_key';
DELETE FROM wp_options WHERE option_name LIKE '%_instance_id';
DELETE FROM wp_options WHERE option_name LIKE '%_activation_status';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wsdesk_tags', 'wsdesk_agent_signature', 'child_users_list', 'wsdesk_sms_phone_no');
DELETE FROM wp_usermeta WHERE meta_key IN ('wsdesk_tags', 'wsdesk_agent_signature', 'child_users_list', 'wsdesk_sms_phone_no');
DELETE FROM wp_termmeta WHERE meta_key IN ('wsdesk_tags', 'wsdesk_agent_signature', 'child_users_list', 'wsdesk_sms_phone_no');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wsdesk_tags', 'wsdesk_agent_signature', 'child_users_list', 'wsdesk_sms_phone_no');

