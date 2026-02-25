#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sti_settings'
wp option delete 'sti_plugin_ver'
wp option delete 'active_sitewide_plugins'

