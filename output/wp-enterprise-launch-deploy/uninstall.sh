#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'weld_logFolder'
wp option delete 'weld_status'
wp option delete 'weld_remote_status_override'
wp option delete 'weld_process_list'
wp option delete 'weld_server_array'
wp option delete 'weld_enableLogging'
wp option delete 'weld_logDuration'
wp option delete 'weld_warningInterval'
wp option delete 'weld_hardening_wpadmin'
wp option delete 'weld_hardening_pluginexcludes'
wp option delete 'weld_statusServerArray'
wp option delete 'weld_statusTime'
wp option delete 'weld_warningIntervalSent'

