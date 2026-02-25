#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tc_auto_plugin'
wp option delete 'tc_auto_plugin_version'
wp option delete 'tc_auto_plugin_admin_notices'

