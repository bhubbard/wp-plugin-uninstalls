#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'filesystem_unlocker_plugin_options'
wp option delete 'filesystem_unlocker_plugin_lock_state'

