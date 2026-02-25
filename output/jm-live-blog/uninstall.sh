#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jm_live_blog_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'live_blog_updates'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'live_blog_updates'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'live_blog_updates'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'live_blog_updates'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'live_blog_color_scheme'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'live_blog_color_scheme'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'live_blog_color_scheme'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'live_blog_color_scheme'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'live_blog_alert_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'live_blog_alert_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'live_blog_alert_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'live_blog_alert_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'live_blog_show_widget'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'live_blog_show_widget'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'live_blog_show_widget'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'live_blog_show_widget'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'live_blog_widget_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'live_blog_widget_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'live_blog_widget_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'live_blog_widget_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'live_blog_widget_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'live_blog_widget_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'live_blog_widget_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'live_blog_widget_description'"
