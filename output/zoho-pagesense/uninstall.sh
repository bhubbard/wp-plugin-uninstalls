#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ZPWS_ZOHO_PAGESENSE_domname'
wp option delete 'ZPWS_ZOHO_PAGESENSE_client_id'
wp option delete 'ZPWS_ZOHO_PAGESENSE_client_secret'
wp option delete 'ZPWS_ZOHO_PAGESENSE_script_updated'
wp option delete 'ZPWS_ZOHO_PAGESENSE_wc_token'
wp option delete 'ZPWS_ZOHO_PAGESENSE_error_msg'
wp option delete 'ZPWS_ZOHO_PAGESENSE_token_details'
wp option delete 'ZPWS_ZOHO_PAGESENSE_connect_time'
wp option delete 'ZPWS_ZOHO_PAGESENSE_user_email'
wp option delete 'ZPWS_ZOHO_PAGESENSE_portal_details'
wp option delete 'ZPWS_ZOHO_PAGESENSE_project_details'
wp option delete 'ZPWS_ZOHO_PAGESENSE_custom_script_data'

