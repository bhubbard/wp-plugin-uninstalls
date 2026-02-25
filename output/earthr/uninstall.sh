#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'earthr_token'
wp option delete 'woocommerce_default_country'
wp option delete 'earthr_action'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_postcode'
wp option delete 'earthr_show'
wp option delete 'earthr_checkbox_style'
wp option delete 'earthr_checkbox_label'
wp option delete 'earthr_palette'
wp option delete 'earthr_fee_name'

# Delete Transients
wp transient delete 'earthr-activation-notice'

