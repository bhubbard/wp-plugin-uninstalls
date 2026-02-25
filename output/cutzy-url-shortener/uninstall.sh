#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cutzy_url_option_name'

# Delete Transients
wp transient delete 'cutzy_guid_success'
wp transient delete 'cutzy_guid_error'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cutzy_shorturl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cutzy_shorturl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cutzy_shorturl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cutzy_shorturl'"
