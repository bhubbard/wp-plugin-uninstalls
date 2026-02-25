#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_quickpay_settings'
wp option delete 'woocommerce_thanks_page_id'
wp option delete 'woocommerce_cart_page_id'
wp option delete 'woocommerce_price_decimal_sep'
wp option delete 'woocommerce_price_thousand_sep'
wp option delete 'woocommerce_quickpay_version'
wp option delete 'woocommerce_quickpay_maintenance'
wp option delete 'woocommerce_email_footer_text'
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_myaccount_page_id'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wcqp_transaction_%' OR option_name LIKE '_site_transient_wcqp_transaction_%'"
wp transient delete '_wcqp_admin_notices'
wp transient delete '_wcqp_admin_runtime_errors'

