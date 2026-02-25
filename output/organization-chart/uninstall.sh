#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpda_chart_user_permissions'
wp option delete 'active_sitewide_plugins'

