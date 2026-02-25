#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'free_writer_plugin_options'
wp option delete 'free_writer_activate_redirect'

# Clear Cron Jobs
wp cron event delete 'import_approved_post'

