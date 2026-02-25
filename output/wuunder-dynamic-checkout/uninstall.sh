#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wuunder_checkout_force_update_fields'
wp option delete 'wuunder_use_custom_backup'
wp option delete 'wuunder_plugin_status'
wp option delete 'wuunder_plugin_environment'
wp option delete 'woocommerce_enable_shipping_calc'
wp option delete 'wuunder_enable_shipping_calc_disabled'
wp option delete 'wuunder_plugin_version'
wp option delete 'wuunder_checkout_status'
wp option delete 'wuunder_api_environment'
wp option delete 'wuunder_api_key'
wp option delete 'wuunder_test_api_key'
wp option delete 'wuunder_webshop_id'
wp option delete 'wuunder_test_webshop_id'
wp option delete 'wuunder_btn_css'
wp option delete 'wuunder_btn_text'
wp option delete 'wuunder_checkout_description'
wp option delete 'wuunder_custom_backup_price'
wp option delete 'wuunder_setup_success'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wuunder_checkout_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wuunder_checkout_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wuunder_checkout_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wuunder_checkout_token'"
