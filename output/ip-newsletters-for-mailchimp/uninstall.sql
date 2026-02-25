-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ipmcn_api_key', 'ipmcn_api_url', 'ipmcn_from_name', 'ipmcn_from_email', 'ipmcn_reply_to', 'ipmcn_logging', 'mc_logging');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mc_deployment_date', 'mc_hh', 'mc_mm', 'mc_ampm', 'test_recipient', 'message_id', 'campaign_id', 'web_id', 'ipmcn_deployment_date', 'mailing_subject', 'mailing_sent', 'duplicated_flag', 'TrackId', 'mailing_id', 'acfetch_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('mc_deployment_date', 'mc_hh', 'mc_mm', 'mc_ampm', 'test_recipient', 'message_id', 'campaign_id', 'web_id', 'ipmcn_deployment_date', 'mailing_subject', 'mailing_sent', 'duplicated_flag', 'TrackId', 'mailing_id', 'acfetch_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('mc_deployment_date', 'mc_hh', 'mc_mm', 'mc_ampm', 'test_recipient', 'message_id', 'campaign_id', 'web_id', 'ipmcn_deployment_date', 'mailing_subject', 'mailing_sent', 'duplicated_flag', 'TrackId', 'mailing_id', 'acfetch_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mc_deployment_date', 'mc_hh', 'mc_mm', 'mc_ampm', 'test_recipient', 'message_id', 'campaign_id', 'web_id', 'ipmcn_deployment_date', 'mailing_subject', 'mailing_sent', 'duplicated_flag', 'TrackId', 'mailing_id', 'acfetch_url');

