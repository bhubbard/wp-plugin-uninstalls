#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'infumar_settings'
wp option delete 'infumar_last_sync'
wp option delete 'infumar_stats'

