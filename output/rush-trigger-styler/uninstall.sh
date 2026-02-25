#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rush_trigger_settings'
wp option delete 'active_sitewide_plugins'

