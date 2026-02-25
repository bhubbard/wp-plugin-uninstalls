-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rm_sample_data_imported', '_icegram_rm_activation_redirect', 'ig_forms_imported', 'rainmaker_sample_form_imported', 'active_sitewide_plugins', 'campaignmonitor_api', 'campaignmonitor_client_id', 'campaignmonitor_lists', 'ig_es_optintype', 'hubspot_api', 'hubspot_lists', 'mailchimp_api', 'mailchimp_double_optin', 'mailchimp_lists', 'rm_offer_bfcm_2025_icegram');
DELETE FROM wp_options WHERE option_name LIKE '%_icegram';
DELETE FROM wp_options WHERE option_name LIKE '%_tracker_activated';
DELETE FROM wp_options WHERE option_name LIKE '%_installed_on';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_api';
DELETE FROM wp_options WHERE option_name LIKE '%_client_id';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name', 'rm_form_settings', 'email', 'name', 'rm_form_id', 'rm_raw_data', 'icegram_message_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name', 'rm_form_settings', 'email', 'name', 'rm_form_id', 'rm_raw_data', 'icegram_message_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name', 'rm_form_settings', 'email', 'name', 'rm_form_id', 'rm_raw_data', 'icegram_message_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name', 'rm_form_settings', 'email', 'name', 'rm_form_id', 'rm_raw_data', 'icegram_message_data');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_time';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_time';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_time';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_time';

