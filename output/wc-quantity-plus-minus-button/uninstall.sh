#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_recomm'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_notice_close_date'"
wp option delete 'woocommerce_enable_ajax_add_to_cart'
wp option delete 'woocommerce_cart_redirect_after_add'

