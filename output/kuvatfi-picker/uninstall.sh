#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kuvatfi_option_apikey'

# Delete Transients
wp transient delete 'kuvatfi_sid'
wp transient delete 'kuvatfi_uid'
wp transient delete 'kuvatfi_validated'
wp transient delete 'kuvatfi_lastgallery'
wp transient delete 'kuvatfi_foldertree'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
