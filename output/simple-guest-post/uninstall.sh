#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gpp_postAuthor'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'guest-name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'guest-name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'guest-name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'guest-name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'guest-email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'guest-email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'guest-email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'guest-email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'guest-gender'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'guest-gender'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'guest-gender'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'guest-gender'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'guest-commadd'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'guest-commadd'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'guest-commadd'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'guest-commadd'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'guest-padd'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'guest-padd'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'guest-padd'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'guest-padd'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'guest-phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'guest-phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'guest-phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'guest-phone'"
