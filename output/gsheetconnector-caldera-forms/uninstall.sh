#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'caldera_google_sheet_info'
wp option delete 'cf_gs_access_code'
wp option delete 'cf_gs_verify'
wp option delete 'cf_gs_token'
wp option delete 'active_sitewide_plugins'
wp option delete 'is_new_client_secret_calderagsc'
wp option delete 'caldera_email_account'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'caldera_gs_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'caldera_gs_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'caldera_gs_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'caldera_gs_settings'"
