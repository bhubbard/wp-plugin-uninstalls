#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ph_octavius_api_key'
wp option delete 'ph_octavius_server'
wp option delete 'octavius_rocks_realtime_breakpoints'

