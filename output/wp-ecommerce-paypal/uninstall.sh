#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpecpp_settings'
wp option delete 'wpecpp_settingsoptions'
wp option delete 'wpecpp_my_plugin_notice_shown'
wp option delete 'wpecpp_admin_notice_shown'
wp option delete 'wpplugin_paypal_button_plugin_admin_settings'

# Delete Transients
wp transient delete 'wpecpp_activation_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpplugin_paypal_button_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpplugin_paypal_button_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpplugin_paypal_button_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpplugin_paypal_button_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpecpp_alignment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpecpp_alignment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpecpp_alignment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpecpp_alignment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpplugin_paypal_button_disable_paypal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpplugin_paypal_button_disable_paypal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpplugin_paypal_button_disable_paypal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpplugin_paypal_button_disable_paypal'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpplugin_paypal_button_disable_stripe'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpplugin_paypal_button_disable_stripe'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpplugin_paypal_button_disable_stripe'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpplugin_paypal_button_disable_stripe'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpplugin_paypal_button_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpplugin_paypal_button_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpplugin_paypal_button_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpplugin_paypal_button_quantity'"
