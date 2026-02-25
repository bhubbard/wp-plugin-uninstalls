#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woo_free_page_options'
wp option delete 'woo_color_page_options'
wp option delete 'woo_billing_page_options'
wp option delete 'customize_woocommerce_checkout_notice'
wp option delete 'billing_first_name'
wp option delete 'billing_last_name'
wp option delete 'billing_company'
wp option delete 'billing_address_1'
wp option delete 'billing_address_2'
wp option delete 'billing_city'
wp option delete 'billing_postcode'
wp option delete 'billing_country'
wp option delete 'billing_state'
wp option delete 'billing_phone'
wp option delete 'billing_email'
wp option delete 'billing_free_checkout'
wp option delete 'billing_virtual_checkout'
wp option delete 'customize_woocommerce_checkout_default_color'
wp option delete 'customize_woocommerce_checkout_add_to_cart_text'

