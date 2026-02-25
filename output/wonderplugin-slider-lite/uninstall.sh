#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wonderplugin_slider_usepostsave'
wp option delete 'wonderplugin_slider_addextrabackslash'
wp option delete 'wonderplugin_slider_supportmultilingual'
wp option delete 'wonderplugin_slider_userrole'
wp option delete 'wonderplugin_slider_keepdata'
wp option delete 'wonderplugin_slider_disableupdate'
wp option delete 'wonderplugin_slider_supportwidget'
wp option delete 'wonderplugin_slider_addjstofooter'
wp option delete 'wonderplugin_slider_jsonstripcslash'
wp option delete 'wonderplugin_slider_thumbnailsize'
wp option delete 'wonderplugin_slider_jetpackdisablelazyload'
wp option delete 'wonderplugin_slider_information'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_sales'"
