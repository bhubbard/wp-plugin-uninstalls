#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'number_vendor_option'
wp option delete 'vendors_ids'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'vendor_name_option_%'"
wp option delete 'list_products_selected'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'vendor_list_product_option_%'"
wp option delete 'is_activate_test_option'
wp option delete 'is_activate_live_option'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'vendor_pk_live_option_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'vendor_sk_live_option_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'vendor_pk_test_option_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'vendor_sk_test_option_%'"

