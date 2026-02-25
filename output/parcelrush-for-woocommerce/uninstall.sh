#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'parcelrush_api_key'
wp option delete 'parcelrush_markup_type'
wp option delete 'parcelrush_markup_value'
wp option delete 'parcelrush_fallback_rate'
wp option delete 'parcelrush_fallback_label'
wp option delete 'woocommerce_weight_unit'
wp option delete 'parcelrush_rates_enabled'

