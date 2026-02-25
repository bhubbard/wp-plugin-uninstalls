#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rewrite_rules'
wp option delete 'openvideoplugin_domain_verification_status'

# Clear Cron Jobs
wp cron event delete 'openvideoplugin_refresh_channel_path_event'

