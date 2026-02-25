-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('chimpbridge_mailchimp_key', 'mc4wp', 'chimpbridge_error_notices', 'chimpbridge_mailchimp_lists');
DELETE FROM wp_options WHERE option_name LIKE 'chimpbridge_email_mailchimp_groups_%';
DELETE FROM wp_options WHERE option_name LIKE 'chimpbridge_mailchimp_segments_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('chimpbridge_email_campaign_id', '_chimpbridge_select_lists', '_chimpbridge_select_segments', '_chimpbridge_from_name', '_chimpbridge_from_email', '_chimpbridge_to_name', 'chimpbridge_email_archive_url', 'chimpbridge_scheduled_email');
DELETE FROM wp_usermeta WHERE meta_key IN ('chimpbridge_email_campaign_id', '_chimpbridge_select_lists', '_chimpbridge_select_segments', '_chimpbridge_from_name', '_chimpbridge_from_email', '_chimpbridge_to_name', 'chimpbridge_email_archive_url', 'chimpbridge_scheduled_email');
DELETE FROM wp_termmeta WHERE meta_key IN ('chimpbridge_email_campaign_id', '_chimpbridge_select_lists', '_chimpbridge_select_segments', '_chimpbridge_from_name', '_chimpbridge_from_email', '_chimpbridge_to_name', 'chimpbridge_email_archive_url', 'chimpbridge_scheduled_email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('chimpbridge_email_campaign_id', '_chimpbridge_select_lists', '_chimpbridge_select_segments', '_chimpbridge_from_name', '_chimpbridge_from_email', '_chimpbridge_to_name', 'chimpbridge_email_archive_url', 'chimpbridge_scheduled_email');

