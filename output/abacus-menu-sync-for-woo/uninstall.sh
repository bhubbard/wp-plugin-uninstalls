#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'layoutStyle'
wp option delete 'storeId'
wp option delete 'apiKey'
wp option delete 'abacusInitialized'

# Delete Transients
wp transient delete 'abacus-menu-admin-notice-success-update'
wp transient delete 'abacus-menu-admin-notice-error-update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
