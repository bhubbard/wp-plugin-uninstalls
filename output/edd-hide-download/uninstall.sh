#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'edd_hd_ids'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_hide_download'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_hide_download'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_hide_download'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_hide_download'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_hide_redirect_download'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_hide_redirect_download'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_hide_redirect_download'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_hide_redirect_download'"
