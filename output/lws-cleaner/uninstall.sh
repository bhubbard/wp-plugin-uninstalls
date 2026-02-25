#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lws_cl_deactivate_comments'
wp option delete 'lws_cl_hide_comments'
wp option delete 'lwscleaner_do_not_ask_again'
wp option delete 'my_plugin_db_version'
wp option delete 'cron'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'lws_cl_%'"

# Delete Transients
wp transient delete 'lwscleaner_remind_me'
wp transient delete 'lws_cl_incache_modal'

