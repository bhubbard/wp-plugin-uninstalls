#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ad5_loyalty_setting'
wp option delete 'ad5_loyalty_default_content_guest'
wp option delete 'ad5_loyalty_default_content_user'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ad5_loyalty_content_guest'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ad5_loyalty_content_guest'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ad5_loyalty_content_guest'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ad5_loyalty_content_guest'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ad5_loyalty_content_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ad5_loyalty_content_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ad5_loyalty_content_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ad5_loyalty_content_user'"
