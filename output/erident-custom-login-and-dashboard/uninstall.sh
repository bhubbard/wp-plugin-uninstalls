#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'plugin_erident_settings'
wp option delete 'udb_migration_from_erident'
wp option delete 'udb_settings'
wp option delete 'udb_branding'
wp option delete 'udb_login'

