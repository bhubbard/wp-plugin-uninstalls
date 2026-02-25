#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ch_wbitly_url_option'

# Delete Transients
wp transient delete 'wbitly_guid_success'
wp transient delete 'wbitly_guid_error'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wbitly_shorturl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wbitly_shorturl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wbitly_shorturl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wbitly_shorturl'"
