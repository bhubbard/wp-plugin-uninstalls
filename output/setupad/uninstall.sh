#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'setupad_notice_date'
wp option delete 'setupad_plugin_review_reminder_shown'
wp option delete 'setupad_db_version'

