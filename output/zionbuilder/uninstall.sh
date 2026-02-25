#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zionbuilder_theme_styles'
wp option delete 'zionbuilder_db_version'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zionbuilder_enable_smooth_scroll'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zionbuilder_enable_smooth_scroll'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zionbuilder_enable_smooth_scroll'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zionbuilder_enable_smooth_scroll'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zionbuilder_preserve_smooth_scroll_history'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zionbuilder_preserve_smooth_scroll_history'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zionbuilder_preserve_smooth_scroll_history'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zionbuilder_preserve_smooth_scroll_history'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_zionbuilder_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_zionbuilder_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_zionbuilder_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_zionbuilder_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zionbuilder_template_themebuilder_area'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zionbuilder_template_themebuilder_area'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zionbuilder_template_themebuilder_area'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zionbuilder_template_themebuilder_area'"
