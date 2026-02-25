#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'total_express_username'
wp option delete 'total_express_password'
wp option delete 'total_express_enabled_services'
wp option delete 'total_express_handling_fee'
wp option delete 'total_express_handling_fee_type'
wp option delete 'total_express_handling_fee_min'
wp option delete 'total_express_handling_fee_max'
wp option delete 'total_express_additional_days'
wp option delete 'total_express_icms_enabled'
wp option delete 'total_express_icms_states'
wp option delete 'total_express_fixed_shipping_enabled'
wp option delete 'total_express_fixed_shipping_value'
wp option delete 'total_express_fixed_shipping_min_value'
wp option delete 'total_express_fixed_shipping_states'
wp option delete 'total_express_free_shipping_enabled'
wp option delete 'total_express_free_shipping_min_value'
wp option delete 'total_express_free_shipping_states'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'total_express_additional_fee_percent'
wp option delete 'total_express_additional_fee_value'
wp option delete 'total_express_plugin_version'
wp option delete 'total_express_additional_time'

