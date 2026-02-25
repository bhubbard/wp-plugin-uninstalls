#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pe-plugin-id-response-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'plugineye_init%'"

# Delete Transients
wp transient delete 'ns-sue-admin-notice-example'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ns_sue_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ns_sue_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ns_sue_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ns_sue_status'"
