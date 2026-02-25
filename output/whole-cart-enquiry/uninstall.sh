#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woowhole_to_emailaddress'
wp option delete 'woowhole_from_emailaddress'
wp option delete 'woowhole_from_name'
wp option delete 'woowhole_success_msg'
wp option delete 'woowhole_failed_msg'
wp option delete 'woowhole_title'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
