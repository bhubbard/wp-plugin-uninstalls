#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%pdf_margin_left'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%pdf_margin_right'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%pdf_order_details_title'"
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_store_city'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%attach_to_mail_types'"

