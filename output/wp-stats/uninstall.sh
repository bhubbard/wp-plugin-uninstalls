#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'stats_url'
wp option delete 'stats_mostlimit'
wp option delete 'stats_display'

