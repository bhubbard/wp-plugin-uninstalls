#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'b0xTPortal_admin_country'
wp option delete 'b0xT_google_api_key'
wp option delete 'b0xTPortal_username'
wp option delete 'b0xTPortal_password'
wp option delete 'b0xTPortal_google_api_key'
wp option delete 'b0xTPortal_mode'
wp option delete 'b0xTPortal_zipcode_label'
wp option delete 'b0xTPortal_page_title'

