#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'edd_drip_cron_half_hourly'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_payment_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_payment_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_payment_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_payment_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_sl_is_renewal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_sl_is_renewal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_sl_is_renewal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_sl_is_renewal'"
