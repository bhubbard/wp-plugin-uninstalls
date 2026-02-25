#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'code_core_tracking_optin'
wp option delete 'code_core_plugin_version'
wp option delete 'ssac_settings'

