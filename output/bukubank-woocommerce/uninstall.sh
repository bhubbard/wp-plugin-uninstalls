#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_bukubank_accounts'

# Clear Cron Jobs
wp cron event delete 'bukubank_hourly_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bukubank_confirm_meta_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bukubank_confirm_meta_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bukubank_confirm_meta_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bukubank_confirm_meta_key'"
