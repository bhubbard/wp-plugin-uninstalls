#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_instaCashBNPLProductCalculation_%' OR option_name LIKE '_site_transient_instaCashBNPLProductCalculation_%'"

# Clear Cron Jobs
wp cron event delete 'instacash_bnpl_offer_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'checkoutId'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'checkoutId'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'checkoutId'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'checkoutId'"
