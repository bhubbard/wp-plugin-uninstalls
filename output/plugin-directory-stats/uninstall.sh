#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'plugin_dir_stats_setting_opt'
wp option delete 'plugin_dir_stats_updated'
wp option delete 'plugin_dir_stats_checkver_stamp'

