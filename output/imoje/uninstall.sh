#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_imoje_blik_settings'
wp option delete 'woocommerce_imoje_settings'
wp option delete 'woocommerce_imoje_paylater_settings'
wp option delete 'woocommerce_imoje_cards_settings'
wp option delete 'woocommerce_imoje_pbl_settings'
wp option delete 'woocommerce_imoje_visa_settings'
wp option delete 'woocommerce_imoje_installments_settings'
wp option delete 'woocommerce_imoje_wallet_settings'
wp option delete 'woocommerce_imoje_leasenow_settings'
wp option delete 'woocommerce_imoje_wt_settings'

