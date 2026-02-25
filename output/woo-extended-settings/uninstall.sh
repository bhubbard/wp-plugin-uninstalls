#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%remove_product_summary'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%remove_related_products'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%woocommerce_template_single_add_to_cart'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%woocommerce_template_loop_add_to_cart'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%wc_add_to_cart_message_html'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%redirect_if_empty_cart'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%single_checkout_page'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%remove_checkout_billing_fields'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%remove_checkout_shipping_fields'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%remove_order_comments'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%remove_product_tabs'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%remove_related_products_from_single_page'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%checkout_page_layout'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%add_last_product_to_single_page'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%billing_checkout_page_layout'"
wp option delete 'active_sitewide_plugins'

