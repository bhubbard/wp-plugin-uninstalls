#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'quiqup_connector_activation_redirect'
wp option delete 'quiqup_connector_api_token'
wp option delete 'quiqup_enable_national_address'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_national_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_national_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_national_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_national_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_national_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_national_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_national_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_national_address'"
