-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('optinable_remove_data_uninstall', 'optinable_data_sharing', 'optinable_disable_tracking', 'optinable_pingdom', '_optinable_joined_list', 'optinable_version', 'optinable_db_version', 'optinable_installed_date', 'optinable_pro_installed', 'optinable_rating_data', 'optinable_mailchimp_api_key', 'optinable_activecampaign_api_url', 'optinable_activecampaign_api_key', 'optinable_mailerlite_api_key', 'optinable_aweber_refresh_token', 'optinable_aweber_auth_code', 'optinable_aweber_account_id', 'optinable_aweber_token');

