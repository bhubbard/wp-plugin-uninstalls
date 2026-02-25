#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lifterlms_set_version_option'
wp option delete 'lifterlms_copecart_disable_order_checkout'
wp option delete 'lifterlms_copecart_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'lifterlms_copecart_temp_pass_%'"
wp option delete 'llms_copecart_lists'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'llms_user_trial'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'llms_user_trial'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'llms_user_trial'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'llms_user_trial'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_copecart_meta_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_copecart_meta_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_copecart_meta_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_copecart_meta_key'"
