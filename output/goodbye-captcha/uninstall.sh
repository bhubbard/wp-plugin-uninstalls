#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'gdbcsettingsadminmodule-settings'
wp option delete 'gdbcwordpressadminmodule-settings'
wp option delete 'gdbcultimatememberadminmodule-settings'
wp option delete 'gdbcsubscriptionsadminmodule-settings'
wp option delete 'gdbcpopularformsadminmodule-settings'
wp option delete 'gdbc-blocked-attempts'
wp option delete 'jetpack_active_modules'

# Delete Transients
wp transient delete 'update_plugins'

