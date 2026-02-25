#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vq_active_sessions'
wp option delete 'vq_sessions_limit_number'
wp option delete 'vq_cookie_expire_hours'
wp option delete 'vq_refresh_seconds'
wp option delete 'vq_inactive_minutes'
wp option delete 'vq_landing_page_url'

