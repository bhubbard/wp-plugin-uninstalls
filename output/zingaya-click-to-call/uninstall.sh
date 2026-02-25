#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zingaya_user_email'
wp option delete 'zingaya_user_name'
wp option delete 'zingaya_api_key'
wp option delete 'zingaya_user_id'
wp option delete 'zingaya_active_widget'
wp option delete 'user_already_exists'
wp option delete 'zingaya_widget'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'zingaya_widget_short_%'"

