#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpfbw-api-url'
wp option delete 'wpfbw-auth-token'
wp option delete 'wp_freshbook_team_hours'

