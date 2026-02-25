#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eshipper_require_postal'
wp option delete 'woocommerce_shipping_method_format'
wp option delete 'eshipper_version'
wp option delete 'woocommerce_eshipper'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_currency'
wp option delete 'eshipper_plugin_activation'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_email_from_name'
wp option delete 'woocommerce_email_from_address'
wp option delete 'woocommerce_default_country'
wp option delete 'eshipper_shipping_margin_percentage'
wp option delete 'eshipper_shipping_margin_fixed'
wp option delete 'eshipper_transit_time_display'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'wp_eshipper_updated'
wp transient delete 'wp_eshipper_activated'

