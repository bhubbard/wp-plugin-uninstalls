#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gpp_gallery'
wp option delete 'gpp_gallery_slug'
wp option delete 'widget_gpp-gallery-widget'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_textbox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_textbox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_textbox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_textbox'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_selectbox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_selectbox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_selectbox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_selectbox'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gpp_gallery_hiddenids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gpp_gallery_hiddenids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gpp_gallery_hiddenids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gpp_gallery_hiddenids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gpp_gallery_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gpp_gallery_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gpp_gallery_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gpp_gallery_description'"
