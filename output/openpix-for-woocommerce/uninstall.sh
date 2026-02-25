#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_woocommerce_openpix_boleto_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_woocommerce_openpix_pix_settings'
wp option delete 'woocommerce_woocommerce_openpix_pix_crediary_settings'
wp option delete 'woocommerce_woocommerce_openpix_pix_parcelado_settings'

