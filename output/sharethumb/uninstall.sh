#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fsst_settings'

# Delete Transients
wp transient delete 'fsst_domain_unverified'
wp transient delete 'fsst_admin_notices'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sharethumb'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sharethumb'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sharethumb'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sharethumb'"
