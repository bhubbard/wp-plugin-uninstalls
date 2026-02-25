#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpclean_plugin_options_archives_pages'
wp option delete 'wpclean_plugin_options_attachments'
wp option delete 'wpclean_plugin_options_comments'
wp option delete 'wpclean_plugin_options_header'
wp option delete 'wpclean_plugin_options_images'
wp option delete 'wpclean_plugin_options_interface'
wp option delete 'wpclean_plugin_options_pagination'
wp option delete 'wpclean_plugin_options_posts'
wp option delete 'wpclean_plugin_options_profile'
wp option delete 'wpclean_plugin_options_rss'
wp option delete 'wpclean_plugin_options_search'
wp option delete 'wpclean_plugin_options_security'
wp option delete 'wpclean_plugin_options_update'
wp option delete 'wpclean_plugin_options_widgets'

# Clear Cron Jobs
wp cron event delete 'wp_version_check'
wp cron event delete 'wp_update_themes'
wp cron event delete 'wp_update_plugins'

