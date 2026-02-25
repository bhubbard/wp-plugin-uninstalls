#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'stats_for_wpinstalled'
wp option delete 'stats_for_wp_current_version'

