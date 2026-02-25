#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hcsh_weekly_hours'
wp option delete 'hcsh_manual_close'
wp option delete 'hcsh_mode'
wp option delete 'hcsh_open_time'
wp option delete 'hcsh_close_time'
wp option delete 'hcsh_closed_message'

