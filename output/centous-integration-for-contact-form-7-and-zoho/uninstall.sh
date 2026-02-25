#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cf7zoho_connection_verified'
wp option delete 'cf7zoho_service'
wp option delete 'cf7zoho_access_token'
wp option delete 'cf7zoho_refresh_token'
wp option delete 'cf7zoho_client_id'
wp option delete 'cf7zoho_client_secret'
wp option delete 'cf7zoho_token_expiration'
wp option delete 'cf7zoho_api_domain'
wp option delete 'cf7zoho_connection_verified_at'
wp option delete 'cf7zoho_account_name'
wp option delete 'cf7zoho_data_center'
wp option delete 'cf7zoho_redirect_url'
wp option delete 'cf7zoho_org_id'
wp option delete 'cf7zoho_selected_module'
wp option delete 'cf7zoho_error_email'
wp option delete 'cf7zoho_client_redirect_url'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cf7zoho_%'"
wp option delete 'cf7zoho_settings'

# Delete Transients
wp transient delete 'cf7zoho_modules_zoho-crm'
wp transient delete 'cf7zoho_modules_zoho-bigin'

