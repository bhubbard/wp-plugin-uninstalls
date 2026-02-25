#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wau_addon_settings'
wp option delete 'active_sitewide_plugins'

