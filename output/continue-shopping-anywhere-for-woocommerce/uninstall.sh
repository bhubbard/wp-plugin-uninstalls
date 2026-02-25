#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'woocsa_cart_apply'
wp option delete 'woocsa_cart_type_after_redirect'
wp option delete 'woocsa_single_position'
wp option delete 'woocsa_cart_custom_link'
wp option delete 'woocommerce_shop_page_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_apply'"
wp option delete 'woocsa_single_condition'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_type_always'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_custom_link'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_custom_text'"

