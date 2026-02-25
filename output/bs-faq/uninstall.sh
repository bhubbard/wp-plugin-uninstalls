#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bs_faq_register_setting'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'display_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'display_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'display_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'display_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'views_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'views_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'views_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'views_count'"
