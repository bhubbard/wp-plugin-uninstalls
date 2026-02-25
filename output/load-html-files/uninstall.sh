#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'load-html-files-settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_form_rendered'"

# Clear Cron Jobs
wp cron event delete 'load_html_files_cron'

