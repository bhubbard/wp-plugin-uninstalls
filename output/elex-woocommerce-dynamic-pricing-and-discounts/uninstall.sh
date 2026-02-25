#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xa_dp_rules'
wp option delete 'xa_dynamic_pricing_setting'
wp option delete 'elex_dp_allowed_roles_to_show_pricing_table'
wp option delete 'dp_coupons_data'
wp option delete 'woocommerce_weight_unit'
wp option delete 'active_sitewide_plugins'
wp option delete 'xa_dp_rules_indexing_status'
wp option delete 'woocommerce_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_review_never_ask_again'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_review_will_do_it_later'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_troubleshoot_never_ask_again'"
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_currency_pos'

