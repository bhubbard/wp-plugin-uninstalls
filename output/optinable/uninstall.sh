#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'optinable_remove_data_uninstall'
wp option delete 'optinable_data_sharing'
wp option delete 'optinable_disable_tracking'
wp option delete 'optinable_pingdom'
wp option delete '_optinable_joined_list'
wp option delete 'optinable_version'
wp option delete 'optinable_db_version'
wp option delete 'optinable_installed_date'
wp option delete 'optinable_pro_installed'
wp option delete 'optinable_rating_data'
wp option delete 'optinable_mailchimp_api_key'
wp option delete 'optinable_activecampaign_api_url'
wp option delete 'optinable_activecampaign_api_key'
wp option delete 'optinable_mailerlite_api_key'
wp option delete 'optinable_aweber_refresh_token'
wp option delete 'optinable_aweber_auth_code'
wp option delete 'optinable_aweber_account_id'
wp option delete 'optinable_aweber_token'

