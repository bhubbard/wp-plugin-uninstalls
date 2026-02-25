#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_price_decimal_sep'
wp option delete 'woocommerce_price_thousand_sep'
wp option delete 'woocommerce_thanks_page_id'
wp option delete 'woocommerce_cart_page_id'
wp option delete 'woocommerce_email_footer_text'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wcpp_transaction_%' OR option_name LIKE '_site_transient_wcpp_transaction_%'"

