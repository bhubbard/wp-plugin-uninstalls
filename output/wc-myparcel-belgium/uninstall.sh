#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcmyparcelbe_admin_notices'
wp option delete 'wcmyparcelbe_print_queue'
wp option delete 'wcmyparcelbe_admin_error_notices'
wp option delete 'wcmyparcelbe_admin_error_notice'
wp option delete 'woocommerce_weight_unit'
wp option delete 'myparcelbe_hide_be_notice'
wp option delete 'woocommerce_force_ssl_checkout'
wp option delete 'woocommerce_shipping_tax_class'
wp option delete 'wcmyparcelbe_settings'
wp option delete 'woocommerce_myparcelbe_general_settings'
wp option delete 'woocommerce_myparcelbe_export_defaults_settings'
wp option delete 'woocommerce_myparcelbe_checkout_settings'
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_street_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_street_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_street_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_street_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_house_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_house_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_house_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_house_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_house_number_suffix'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_house_number_suffix'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_house_number_suffix'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_house_number_suffix'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_street_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_street_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_street_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_street_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_house_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_house_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_house_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_house_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_house_number_suffix'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_house_number_suffix'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_house_number_suffix'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_house_number_suffix'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_street_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_street_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_street_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_street_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_house_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_house_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_house_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_house_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_house_number_suffix'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_house_number_suffix'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_house_number_suffix'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_house_number_suffix'"
