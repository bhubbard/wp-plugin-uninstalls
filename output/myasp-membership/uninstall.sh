#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%common_seller_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%common_domain'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%common_label_free_button'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%common_label_paid_button'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%common_free_button_action'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%common_paid_button_action'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%common_api_token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%common_item_id'"

