#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pa_db_version'
wp option delete 'pa_plugins'
wp option delete 'pa_active_plugins'
wp option delete 'active_sitewide_plugins'

