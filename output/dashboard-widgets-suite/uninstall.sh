#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dws_options_feed_box'
wp option delete 'dws_options_notes_user'
wp option delete 'dws_options_social_box'
wp option delete 'dws_options_general'
wp option delete 'dws_options_list_box'
wp option delete 'dws_options_log_debug'
wp option delete 'dws_options_log_error'
wp option delete 'dws_options_system_info'
wp option delete 'dws_options_widget_box'
wp option delete 'dws_notes_user_data'
wp option delete 'dashboard-widgets-suite-dismiss-notice'

