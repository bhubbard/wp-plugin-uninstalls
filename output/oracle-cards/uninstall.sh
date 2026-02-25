#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eos-cards-options'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%'"
wp option delete 'eos_oc_license_key'
wp option delete 'eos_oc_license_status'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eos_linked_url_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eos_linked_url_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eos_linked_url_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eos_linked_url_key'"
