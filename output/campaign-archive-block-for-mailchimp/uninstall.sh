#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cabfm_api_key'
wp option delete 'cabfm_server_prefix'
wp option delete 'cabfm_api_credentials_validation_result'
wp option delete 'cabfm_api_credentials_validation_message'
wp option delete 'cabfm_api_credentials_account_name'
wp option delete 'mc_api_key'
wp option delete 'mailchimp-woocommerce'

