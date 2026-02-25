#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'usfw_admin_phone'
wp option delete 'usfw_sender_id'
wp option delete 'usfw_api_url'
wp option delete 'usfw_api_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
