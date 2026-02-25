#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sc_session_handler_clean_on_open'
wp option delete 'sc_session_handler_clean_on_gc'
wp option delete 'sc_session_handler_clean_every'
wp option delete 'sc_session_handler_version'

# Clear Cron Jobs
wp cron event delete 'sc_mysqlsession_cron_hook'

