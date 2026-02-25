#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'streamlineconnect_settings'
wp option delete 'Streamlineconnect_api_key'
wp option delete 'streamlineconnect_enable_widget'
wp option delete 'streamline_api_key'
wp option delete 'streamlineconnect_api_key_image'

# Delete Transients
wp transient delete 'settings_errors'
wp transient delete 'streamline_subscription_status'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'streamline_subscription_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'streamline_subscription_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'streamline_subscription_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'streamline_subscription_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'streamline_subscription_plan'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'streamline_subscription_plan'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'streamline_subscription_plan'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'streamline_subscription_plan'"
