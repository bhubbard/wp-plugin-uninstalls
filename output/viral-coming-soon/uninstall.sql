-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('r_notice_data', 'active_sitewide_plugins', 'ReduxFrameworkPlugin', 'redux-framework-tracking', 'redux_version_upgraded_from', 'redux_support_hash', 'mailchimp_api_status', 'aweber_api_status', 'aweber_consumer_key', 'aweber_consumer_secret', 'aweber_access_token', 'aweber_access_secret', 'campaignmonitor_api_status', 'getresponse_api_status', 'convertkit_api_status', 'custom_html_form_action', 'custom_html_hidden_inputs', 'custom_html_name_input', 'custom_html_email_input', 'custom_html_normal_inputs', 'redux-extensions-fetch', '_redux_activation_redirect', 'redux_contributors');
DELETE FROM wp_options WHERE option_name LIKE '%-transients';
DELETE FROM wp_options WHERE option_name LIKE '%-transient';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ignore_hints');
DELETE FROM wp_usermeta WHERE meta_key IN ('ignore_hints');
DELETE FROM wp_termmeta WHERE meta_key IN ('ignore_hints');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ignore_hints');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ignore_%';

