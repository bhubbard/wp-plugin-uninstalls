#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'optimus'
wp option delete 'optimus_key'
wp option delete 'optimus_purchase_time'

# Delete Transients
wp transient delete 'optimus_activation_hook_in_use'
wp transient delete 'optimus_renew_licence'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
