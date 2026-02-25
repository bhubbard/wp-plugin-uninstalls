#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shiftnav_admin_notices'
wp option delete 'shiftnav_pro_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_uber_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_uber_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_uber_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_uber_options'"
