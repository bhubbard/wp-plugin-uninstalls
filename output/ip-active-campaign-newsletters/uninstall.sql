-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ac_logging', 'ipacn_api_key', 'ipacn_api_url', 'ipacn_from_name', 'ipacn_from_email', 'ipacn_reply_to', 'ipacn_logging');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ac_deployment_date', 'ac_hh', 'ac_mm', 'ac_ampm', 'test_recipient', 'message_id', 'campaign_id', 'ipacn_deployment_date', 'mailing_subject', 'mailing_sent', 'duplicated_flag', 'TrackId', 'mailing_id', 'acfetch_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('ac_deployment_date', 'ac_hh', 'ac_mm', 'ac_ampm', 'test_recipient', 'message_id', 'campaign_id', 'ipacn_deployment_date', 'mailing_subject', 'mailing_sent', 'duplicated_flag', 'TrackId', 'mailing_id', 'acfetch_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('ac_deployment_date', 'ac_hh', 'ac_mm', 'ac_ampm', 'test_recipient', 'message_id', 'campaign_id', 'ipacn_deployment_date', 'mailing_subject', 'mailing_sent', 'duplicated_flag', 'TrackId', 'mailing_id', 'acfetch_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ac_deployment_date', 'ac_hh', 'ac_mm', 'ac_ampm', 'test_recipient', 'message_id', 'campaign_id', 'ipacn_deployment_date', 'mailing_subject', 'mailing_sent', 'duplicated_flag', 'TrackId', 'mailing_id', 'acfetch_url');

