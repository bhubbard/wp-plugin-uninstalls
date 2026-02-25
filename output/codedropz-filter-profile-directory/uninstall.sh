#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pdfi_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pdfi_firstname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pdfi_firstname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pdfi_firstname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pdfi_firstname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pdfi_lastname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pdfi_lastname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pdfi_lastname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pdfi_lastname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pdfi_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pdfi_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pdfi_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pdfi_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pdfi_occupation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pdfi_occupation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pdfi_occupation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pdfi_occupation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pdfi_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pdfi_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pdfi_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pdfi_description'"
