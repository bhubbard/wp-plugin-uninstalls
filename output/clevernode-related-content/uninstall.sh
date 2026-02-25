#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'clevernode_plugin_settings'
wp option delete 'clevernode_account_data'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_clevenode-admin-notice-%' OR option_name LIKE '_site_transient_clevenode-admin-notice-%'"
wp transient delete 'clevernode-admin-notice-connection'
wp transient delete 'clevernode-admin-notice-activation'
wp transient delete 'clevernode-review-notice'
wp transient delete 'clevernode-review-notice-check'
wp transient delete 'clevernode-review-notice-flag'

