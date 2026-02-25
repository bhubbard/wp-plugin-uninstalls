#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wppizza'
wp option delete 'wppizza_addingredients'
wp option delete 'wppizza_dbp'
wp option delete 'wppizza_pickup_prices'
wp option delete 'wppizza_preorder'
wp option delete 'wppizza_stockmanagement'
wp option delete 'wppizza_cad'
wp option delete 'wppizza_cad_coupons'
wp option delete 'wppizza_cad_discounts'
wp option delete 'wppizza_gateway_cod'
wp option delete 'wppizza_gateway_paypal'

