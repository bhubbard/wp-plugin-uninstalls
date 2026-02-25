#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pblsh_settings'
wp option delete 'pblsh_secret_salt'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pblsh_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pblsh_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pblsh_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pblsh_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pblsh_zip_path'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pblsh_zip_path'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pblsh_zip_path'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pblsh_zip_path'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pblsh_installations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pblsh_installations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pblsh_installations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pblsh_installations'"
