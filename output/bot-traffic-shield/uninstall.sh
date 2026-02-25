#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'btsld_blocked_log'
wp option delete 'btsld_blocked_count'
wp option delete 'btsld_settings'

