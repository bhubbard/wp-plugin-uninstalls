#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_pensopay_settings'
wp option delete 'woocommerce_thanks_page_id'
wp option delete 'woocommerce_cart_page_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_turn_off_automatic_payments'"
wp option delete 'woocommerce_price_decimal_sep'
wp option delete 'woocommerce_price_thousand_sep'
wp option delete 'woocommerce_pensopay_version'
wp option delete 'woocommerce_pensopay_maintenance'
wp option delete 'woocommerce_email_footer_text'
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_myaccount_page_id'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wcpp_transaction_%' OR option_name LIKE '_site_transient_wcpp_transaction_%'"
wp transient delete '_wcpp_admin_notices'
wp transient delete '_wcpp_admin_runtime_errors'

# Clear Cron Jobs
wp cron event delete 'pensopay_virtualpayments_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'TRANSACTION_ID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'TRANSACTION_ID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'TRANSACTION_ID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'TRANSACTION_ID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'success'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'success'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'success'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'success'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'errors'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'errors'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'errors'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'errors'"
