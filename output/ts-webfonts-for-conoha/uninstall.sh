#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'typesquare_custom_theme'
wp option delete 'typesquare_auth'
wp option delete 'typesquare_fonttheme'
wp option delete 'typesquare_site_font_setting'
wp option delete 'typesquare_pro_setting'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'metaboxhidden_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'metaboxhidden_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'metaboxhidden_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'metaboxhidden_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'typesquare_fonttheme'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'typesquare_fonttheme'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'typesquare_fonttheme'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'typesquare_fonttheme'"
