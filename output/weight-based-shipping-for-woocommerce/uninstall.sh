#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wbs_config'
wp option delete 'wbs_global_methods'
wp option delete 'wbs_settings'
wp option delete 'woocommerce_currency_pos'
wp option delete 'woocommerce_weight_unit'
wp option delete 'wbsng_reviewed'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'wbsng_settings_multicurrency'

