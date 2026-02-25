#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'acm_paused_events'
wp option delete 'acm_schedules'
wp option delete 'acm_server_settings'

