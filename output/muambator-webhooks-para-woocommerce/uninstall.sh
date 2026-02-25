#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mbwebhooks-settings'
wp option delete 'mbwebhooks_db_version'

# Delete Transients
wp transient delete 'mbwebhook_installing'

