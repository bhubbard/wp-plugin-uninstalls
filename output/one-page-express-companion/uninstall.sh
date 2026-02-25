#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_companion_old_show_on_front'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_companion_old_page_on_front'"
wp option delete 'sidebars_widgets'
wp option delete 'cp_initialize_notifications'
wp option delete 'widget_block'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-notice-dismissed'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_front_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_front_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_front_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_front_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_maintainable_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_maintainable_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_maintainable_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_maintainable_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
