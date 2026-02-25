#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'b1nTPortal_admin_country'
wp option delete 'b1nTPortal_google_api_key'
wp option delete 'b1nTPortal_username'
wp option delete 'b1nTPortal_password'
wp option delete 'b1nTPortal_mode'
wp option delete 'b1nTPortal_zipcode_label'
wp option delete 'b1nTPortal_page_title'

