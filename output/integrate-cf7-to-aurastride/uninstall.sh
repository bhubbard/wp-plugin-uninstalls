#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cf7au_api_fields_mapping'
wp option delete 'cf7au_api_enable'
wp option delete 'cf7au_api_url'
wp option delete 'cf7au_authorization_code'
wp option delete 'cf7au_client_id'
wp option delete 'cf7au_client_secret'
wp option delete 'cf7au_authorization_key'
wp option delete 'cf7au_log_enable'
wp option delete 'cf7au_send_direct'
wp option delete 'cf7au_aurastride_api_refresh_token'
wp option delete 'cf7au_aurastride_api_access_token'
wp option delete 'cf7au_aurastride_api_expiry_time'

# Clear Cron Jobs
wp cron event delete 'cf7au_aurastride_crm_api_enquiry_submission'
wp cron event delete 'cf7au_aurastride_crm_form_api_enquiry_submission'

