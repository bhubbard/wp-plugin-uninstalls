#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woowupApikey'

# Clear Cron Jobs
wp cron event delete 'woowup_abandonedcart_send_cart'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_document'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_document'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_document'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_document'"
