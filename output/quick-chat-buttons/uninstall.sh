#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'channel_setting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'channel_setting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'channel_setting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'channel_setting'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'button_setting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'button_setting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'button_setting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'button_setting'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'widget_setting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'widget_setting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'widget_setting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'widget_setting'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'trigger_setting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'trigger_setting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'trigger_setting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'trigger_setting'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'other_setting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'other_setting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'other_setting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'other_setting'"
