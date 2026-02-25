#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_bayarcash_givewp_directdebit_%' OR option_name LIKE '_site_transient_bayarcash_givewp_directdebit_%'"

# Clear Cron Jobs
wp cron event delete 'bayarcash_update_payment'
wp cron event delete 'bayarcash_givewp_checkpayment'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_give_payment_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_give_payment_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_give_payment_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_give_payment_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_give_anonymous_donation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_give_anonymous_donation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_give_anonymous_donation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_give_anonymous_donation'"
