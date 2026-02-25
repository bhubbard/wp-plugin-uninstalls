#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_remove-checkout-fields_billing_fname'
wp option delete 'wc_remove-checkout-fields_billing_lname'
wp option delete 'wc_remove-checkout-fields_billing_phone'
wp option delete 'wc_remove-checkout-fields_billing_company'
wp option delete 'wc_remove-checkout-fields_billing_country'
wp option delete 'wc_remove-checkout-fields_billing_address2'
wp option delete 'wc_remove-checkout-fields_billing_address'
wp option delete 'wc_remove-checkout-fields_billing_city'
wp option delete 'wc_remove-checkout-fields_billing_state'
wp option delete 'wc_remove-checkout-fields_billing_postcode'
wp option delete 'wc_remove-checkout-fields_Shipping_fname'
wp option delete 'wc_remove-checkout-fields_Shipping_lname'
wp option delete 'wc_remove-checkout-fields_Shipping_phone'
wp option delete 'wc_remove-checkout-fields_Shipping_company'
wp option delete 'wc_remove-checkout-fields_Shipping_country'
wp option delete 'wc_remove-checkout-fields_Shipping_address2'
wp option delete 'wc_remove-checkout-fields_Shipping_address'
wp option delete 'wc_remove-checkout-fields_Shipping_city'
wp option delete 'wc_remove-checkout-fields_Shipping_state'
wp option delete 'wc_remove-checkout-fields_Shipping_postcode'
wp option delete 'wc_remove-checkout-fields_order_notes'

