#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ace_link_sections_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ace_linkcategory_sections_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ace_page_sections_%'"
wp option delete 'ace_settings_onlyinwidget'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ace_categories_%'"
wp option delete 'ace_settings_hide'
wp option delete 'ace_settings_xsg_category'
wp option delete 'sm_options'
wp option delete 'ace_categories_norobots'
wp option delete 'ace_settings_exclude_method'
wp option delete 'ace_categories_is_home'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ace_catwidget_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ace_pagewidget_%'"
wp option delete 'ace_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ace_settings_%'"
wp option delete 'ace_settings_ec3'
wp option delete 'ec3_event_category'
wp option delete 'ace_settings_showempty'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ace_linkcat_%'"
wp option delete 'ace_widget_calendar'
wp option delete 'ace_widget_categories'
wp option delete 'ace_widget_recent_comments'
wp option delete 'widget_recent_entries'
wp option delete 'ace_widget_recent_posts'

