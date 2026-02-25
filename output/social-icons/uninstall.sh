#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'social_icons_meta_box_errors'
wp option delete 'social_icons_admin_footer_text_rated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sortable_icons'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sortable_icons'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sortable_icons'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sortable_icons'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'background_style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'background_style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'background_style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'background_style'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'icon_font_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'icon_font_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'icon_font_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'icon_font_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manage_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manage_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manage_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manage_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_greyscale_icons'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_greyscale_icons'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_greyscale_icons'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_greyscale_icons'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_open_new_tab'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_open_new_tab'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_open_new_tab'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_open_new_tab'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_add_nofollow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_add_nofollow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_add_nofollow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_add_nofollow'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'icon_padding'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'icon_padding'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'icon_padding'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'icon_padding'"
