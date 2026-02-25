#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ni_invoice_option'

# Clear Cron Jobs
wp cron event delete 'prefix_do_this_in_every_fifteen_minute'
wp cron event delete 'my_hourly_event_anzar'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
