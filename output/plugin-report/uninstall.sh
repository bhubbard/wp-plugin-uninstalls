#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'auto_update_plugins'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'plugin_report_cache_cleared'

