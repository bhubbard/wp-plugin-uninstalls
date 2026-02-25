#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'dotix.%'"

# Delete Transients
wp transient delete 'dotix_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dotix_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dotix_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dotix_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dotix_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dotix'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dotix'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dotix'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dotix'"
