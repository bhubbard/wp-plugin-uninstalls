#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'adb_status'
wp option delete 'adb_display_status'
wp option delete 'adb_display_message'
wp option delete 'adb_display_image'

