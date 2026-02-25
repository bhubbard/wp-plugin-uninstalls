#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%show_image'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%image'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%show_uploaded_image'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%upload_image'"
wp option delete 'woocommerce_notify_low_stock_amount'
wp option delete 'wc_call_for_price__text'
wp option delete 'wc_call_for_price__show_image'
wp option delete 'wc_call_for_price__image'
wp option delete 'wc_call_for_price__show_uploaded_image'

