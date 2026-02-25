#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hiweb_plugins_server'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'theme_mods_%'"
wp option delete 'hiweb_settings_cyt2lat'
wp option delete 'hiweb_settings_head_base'
wp option delete 'hiweb_cms_plugins_path'
wp option delete 'hiweb_cms_support_thumbnails'
wp option delete 'hiweb_cms_title'
wp option delete 'hiweb_cms_support_menus'
wp option delete 'hiweb_cms_support_widgets'
wp option delete 'hiweb_cms_support_postformats'
wp option delete 'hiweb_cms_autochange_basedir'
wp option delete 'hiweb_cms_adminmenu_options'
wp option delete 'hiweb_settings_script_footer'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hiweb_cms_title_mod'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hiweb_cms_title_mod'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hiweb_cms_title_mod'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hiweb_cms_title_mod'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hiweb_cms_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hiweb_cms_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hiweb_cms_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hiweb_cms_title'"
