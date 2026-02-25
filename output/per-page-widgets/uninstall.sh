#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_i123_widgets_setting_overall'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_i123_widgets_setting_overall'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_i123_widgets_setting_overall'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_i123_widgets_setting_overall'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_i123_widgets_show_sidebar_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_i123_widgets_show_sidebar_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_i123_widgets_show_sidebar_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_i123_widgets_show_sidebar_%'"
