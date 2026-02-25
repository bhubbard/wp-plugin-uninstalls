#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nachrichten_plugin_version'
wp option delete 'nachrichten_plugin_version_taken'
wp option delete 'nachrichten_plugin_widget_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'news_style_dashbord_style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'news_style_dashbord_style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'news_style_dashbord_style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'news_style_dashbord_style'"
