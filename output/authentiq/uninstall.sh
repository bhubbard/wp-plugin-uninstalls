#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'wsl_settings_Authentiq_app_id'
wp option delete 'wsl_settings_Authentiq_app_secret'
wp option delete 'woocommerce_enable_myaccount_registration'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%authentiq_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%authentiq_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%authentiq_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%authentiq_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%authentiq_obj'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%authentiq_obj'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%authentiq_obj'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%authentiq_obj'"
