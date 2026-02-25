#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_paytrtaksit_content_title'
wp option delete 'woocommerce_paytrtaksit_description_top'
wp option delete 'woocommerce_paytrtaksit_description_bottom'
wp option delete 'woocommerce_paytrtaksit_tax_included'
wp option delete 'woocommerce_paytrtaksit_merchant_id'
wp option delete 'woocommerce_paytrtaksit_token'
wp option delete 'woocommerce_paytrtaksit_max_installment'
wp option delete 'woocommerce_paytrtaksit_extra_installment'
wp option delete 'woocommerce_paytrtaksit_product_tab_title'
wp option delete 'woocommerce_paytrtaksit_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woocommerce_paytrtaksit_%'"

