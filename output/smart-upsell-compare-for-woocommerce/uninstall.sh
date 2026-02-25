#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'no_exists_value'
wp option delete 'wc_settings_tab_smart_upsell_compare_wcsuc_enabled'
wp option delete 'wc_settings_tab_smart_upsell_compare_wcsuc_product'
wp option delete 'wc_settings_tab_smart_upsell_compare_wcsuc_product_cp'

