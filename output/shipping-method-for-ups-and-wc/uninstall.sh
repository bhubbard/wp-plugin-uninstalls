#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_ups_config_settings'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'

