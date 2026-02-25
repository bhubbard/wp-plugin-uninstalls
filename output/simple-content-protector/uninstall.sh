#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tscp_plugin_enabled'
wp option delete 'tscp_disable_for_admins'

