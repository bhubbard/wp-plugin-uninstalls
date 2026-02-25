#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'swift_control_widget_settings'
wp option delete 'swift_control_active_widgets'
wp option delete 'swift_control_color_settings'
wp option delete 'swift_control_display_settings'
wp option delete 'swift_control_misc_settings'
wp option delete 'swift_control_admin_bar_settings'
wp option delete 'swift_control_compat_migrate_options'
wp option delete 'admin_bar_settings_backwards_compat'
wp option delete 'swift_control_discontinue_message'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'swift_control_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'swift_control_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'swift_control_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'swift_control_position'"
