#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcu_enable_plugin'
wp option delete 'wcu_product_category'
wp option delete 'wcu_plugin_setting_user_password'
wp option delete 'wcu_plugin_setting_user_login'
wp option delete 'wcu_uc_public_key'
wp option delete 'wcu_plugin_user_id'

