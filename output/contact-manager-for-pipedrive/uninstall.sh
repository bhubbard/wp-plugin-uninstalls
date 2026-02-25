#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cmfp-pipedrive-register'
wp option delete 'cmfp-pipedrive-register-stage'
wp option delete 'cmfp-pipedrive-key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
