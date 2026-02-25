#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'directiq_id'
wp option delete 'directiq_key'
wp option delete 'directiq_authorize_shop'

# Clear Cron Jobs
wp cron event delete 'directiq_cron_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_directiq_cart_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_directiq_cart_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_directiq_cart_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_directiq_cart_id'"
