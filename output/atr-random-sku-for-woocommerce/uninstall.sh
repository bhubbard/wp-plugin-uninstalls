#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'atr_select_sku_format'
wp option delete 'atr_prefix_sku'
wp option delete 'atr_incremental_sku_start'
wp option delete 'atr_force_sku_on_empty'
wp option delete 'atr_sku_length'
wp option delete 'atr_characters_for_SKU'
wp option delete 'atr_min_number_for_number'
wp option delete 'atr_max_number_for_number'
wp option delete 'atr_incremental_sku_min_num_digits'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"

