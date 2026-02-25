#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_local_price_labels_enabled'
wp option delete 'woocommerce_custom_price_labels_disabled_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset'"
wp option delete 'woocommerce_custom_price_label_enabled'
wp option delete 'woocommerce_custom_price_label_disable_for_bots'
wp option delete 'woocommerce_custom_price_label_override_global_with_local'
wp option delete 'alg_woocommerce_global_price_labels_hide_on'
wp option delete 'alg_woocommerce_global_price_labels_show_on'
wp option delete 'woocommerce_global_price_labels_enabled'
wp option delete 'alg_woocommerce_global_price_labels_roles_to_hide'
wp option delete 'alg_woocommerce_global_price_labels_roles_to_show'
wp option delete 'woocommerce_global_price_labels_add_before_text'
wp option delete 'woocommerce_global_price_labels_add_after_text'
wp option delete 'woocommerce_global_price_labels_between_regular_and_sale_text'
wp option delete 'woocommerce_global_price_labels_remove_text'
wp option delete 'woocommerce_global_price_labels_replace_text'
wp option delete 'woocommerce_global_price_labels_replace_with_text'
wp option delete 'woocommerce_version'
wp option delete 'woocommerce_local_price_labels_wrap_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_prepend'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_append'"
wp option delete 'active_sitewide_plugins'
wp option delete 'alg_wc_custom_price_label_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
