#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gcbt_yazdir_icon'
wp option delete 'gcbt_indir_icon'
wp option delete 'gcbt_yazdir_icon_color'
wp option delete 'gcbt_indir_icon_color'
wp option delete 'gcbt_yazdir_text_color'
wp option delete 'gcbt_indir_text_color'
wp option delete 'gcbt_yazdir_bg_color'
wp option delete 'gcbt_indir_bg_color'
wp option delete 'gcbt_show_yazdir'
wp option delete 'gcbt_show_indir'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
