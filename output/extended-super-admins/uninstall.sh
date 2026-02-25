#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_esa_deleted_deprecated_role'
wp option delete '_esa_capsCodexInfo'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete '_esa_capsCodexInfo'

