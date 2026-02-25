#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'snfw_template_%'"
wp option delete 'snfw_api_key'
wp option delete 'snfw_auth_key'
wp option delete 'snfw_template_order_placed'
wp option delete 'snfw_seller_number'
wp option delete 'snfw_template_seller_alert'

