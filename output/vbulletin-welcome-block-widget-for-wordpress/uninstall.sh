#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vb_widget_forumpath'
wp option delete 'vb_widget_avatar_dimensions'
wp option delete 'vb_widget_forum_version'
wp option delete 'vb_widget_absolute_path'
wp option delete 'widget_vbulletin_login'

