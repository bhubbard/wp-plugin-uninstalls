#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'whsfi_hide_show_featured_image_notice'
wp option delete 'whsfi_hide_all_image'
wp option delete 'whsfi_hide_admin_bar'
wp option delete 'whsfi_hide_howdy_text'
wp option delete 'whsfi_hide_admin_bar_logo'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_whsfi_hide_featured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_whsfi_hide_featured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_whsfi_hide_featured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_whsfi_hide_featured'"
