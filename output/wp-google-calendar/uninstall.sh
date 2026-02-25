#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'events_database_version'
wp option delete 'api_setting_database_version'
wp option delete 'google_cal_file'

