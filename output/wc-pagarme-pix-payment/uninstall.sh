#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_wc_pagarme_pix_payment_geteway_settings'
wp option delete 'wcbcf_settings'
wp option delete 'woocommerce_email_footer_text'

# Clear Cron Jobs
wp cron event delete 'wc_pagarme_pix_payment_schedule'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_pagarme_pix_payment_dismissed_notice_plugin_sugestion'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_pagarme_pix_payment_dismissed_notice_plugin_sugestion'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_pagarme_pix_payment_dismissed_notice_plugin_sugestion'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_pagarme_pix_payment_dismissed_notice_plugin_sugestion'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wc_pagarme_pix_payment_dismissed_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wc_pagarme_pix_payment_dismissed_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wc_pagarme_pix_payment_dismissed_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wc_pagarme_pix_payment_dismissed_notice_%'"
