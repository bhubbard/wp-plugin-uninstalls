#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mailpoet_woocommerce_subscribe_too'
wp option delete 'mailpoet_woocommerce_addon_version'
wp option delete 'mailpoet_woocommerce_enable_checkout'
wp option delete 'mailpoet_woocommerce_customer_selects'
wp option delete 'mailpoet_woocommerce_checkbox_status'
wp option delete 'mailpoet_woocommerce_checkout_label'
wp option delete 'mailpoet_woocommerce_double_optin'
wp option delete 'mailpoet_woocommerce_subscription_position'
wp option delete 'mailpoet_woocommerce_uninstall_data'
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mailpoet_wc_subscribed_to_newsletter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mailpoet_wc_subscribed_to_newsletter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mailpoet_wc_subscribed_to_newsletter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mailpoet_wc_subscribed_to_newsletter'"
