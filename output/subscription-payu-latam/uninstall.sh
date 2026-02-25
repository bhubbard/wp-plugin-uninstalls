#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_currency'
wp option delete 'subscription_payu_latam_spl_redirect'
wp option delete 'subscription_payu_latam_spl_version'

# Clear Cron Jobs
wp cron event delete 'subscription_payu_latam_spl'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'subscription_payu_latam_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'subscription_payu_latam_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'subscription_payu_latam_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'subscription_payu_latam_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'subscription_payu_latam_id_client'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'subscription_payu_latam_id_client'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'subscription_payu_latam_id_client'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'subscription_payu_latam_id_client'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_dni'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_dni'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_dni'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_dni'"
