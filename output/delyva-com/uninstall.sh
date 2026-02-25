#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'delyva_user_id'
wp option delete 'delyva_api_key'
wp option delete 'delyva_integration_id'
wp option delete 'woocommerce_delyva_settings'
wp option delete 'woocs_welcome_currency'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'

