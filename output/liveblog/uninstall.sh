#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'embed_autourls'
wp option delete 'liveblog_rewrites_version'

# Clear Cron Jobs
wp cron event delete 'auto_archive_check_hook'

