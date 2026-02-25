#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'quick_deploy_plugins'
wp option delete 'update_plugins'
wp option delete 'pc_ignored_plugins'
wp option delete 'recently_activated'

# Delete Transients
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_plugins_delete_result_%' OR option_name LIKE '_site_transient_plugins_delete_result_%'"

