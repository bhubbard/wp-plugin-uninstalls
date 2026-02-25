-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_mishmch_api_key', '_misha_mailchimp_lists_with_webhooks', '_mishmch_2optin', '_misha_mailchimp_scheduled_rules', '_resync_in_process', '_misha_mailchimp_resync_users_offset', 'mishmch_lists1');
DELETE FROM wp_options WHERE option_name LIKE '_nointerests_for_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_misha_mailchimp_plan_statuses');
DELETE FROM wp_usermeta WHERE meta_key IN ('_misha_mailchimp_plan_statuses');
DELETE FROM wp_termmeta WHERE meta_key IN ('_misha_mailchimp_plan_statuses');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_misha_mailchimp_plan_statuses');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%approved';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%approved';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%approved';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%approved';

