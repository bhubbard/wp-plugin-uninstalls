#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xoo-el-settings-init'
wp option delete 'xoo-el-version'
wp option delete 'xoo_tracking_consent_easy-login-woocommerce'
wp option delete 'xoo-el-gl-options'
wp option delete 'xoo-el-sy-options'
wp option delete 'xoo-el-av-options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'xoo_tracking_consent_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'xoo_plugin_deactivated_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_theme_templates_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_old_layout'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-general-options'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_last_name'"
