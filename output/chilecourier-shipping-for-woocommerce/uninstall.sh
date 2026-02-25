#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ccfw_communes'
wp option delete 'ccfw_api_info'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'

