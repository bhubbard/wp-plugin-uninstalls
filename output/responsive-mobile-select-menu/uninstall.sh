#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'responsive_mobile_select_version'
wp option delete 'rms_plugin_settings_v2'
wp option delete 'responsive_mobile_select_update_completed'

