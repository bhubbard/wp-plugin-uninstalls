#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nlingual_upgraded'
wp option delete 'nLingual-options'
wp option delete 'nlingual_options'
wp option delete 'nlingual_languages'
wp option delete 'nlingual_database_version'
wp option delete 'nlingual_upgraded_tables'
wp option delete 'nlingual_upgraded_options'
wp option delete 'nLingual-sync_rules'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'settings_errors'

