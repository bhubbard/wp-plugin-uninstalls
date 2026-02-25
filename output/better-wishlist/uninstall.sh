#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bw_settings'

# Delete Transients
wp transient delete 'better_wishlist_flush_rewrite_rules'

# Clear Cron Jobs
wp cron event delete 'better_wishlist_delete_expired_wishlist'

