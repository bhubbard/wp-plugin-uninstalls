#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'pmpro_cron_myCred_subscription_updates'
wp cron event delete 'pmpro_myCred_subscription_charges'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pmpro_mycred_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pmpro_mycred_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pmpro_mycred_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pmpro_mycred_order'"
