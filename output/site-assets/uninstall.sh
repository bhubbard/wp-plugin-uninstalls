#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'site_assets_manage'
wp option delete 'site_assets_view'
wp option delete 'site_assets_position'
wp option delete 'site_assets_style'
wp option delete 'site_assets_style_custom_border_size'
wp option delete 'site_assets_style_custom_border_color'
wp option delete 'site_assets_style_custom_title_color'
wp option delete 'site_assets_style_custom_link_color'
wp option delete 'site_assets_style_custom_hover_color'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_site_assets_urls'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_site_assets_urls'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_site_assets_urls'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_site_assets_urls'"
