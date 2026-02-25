#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'uicore_connect'
wp option delete 'uicore_blocks_recaptcha_site_key'
wp option delete 'uicore_blocks_googlemaps_api_key'
wp option delete 'uicore_theme_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_uicore_widget_block_styles_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_uicore_widget_block_fonts_%'"
wp option delete 'uicore_blocks_recaptcha_secret_key'
wp option delete 'uicore_blocks_mailchimp_secret_key'
wp option delete 'uicore_blocks_quick_actions'
wp option delete 'uiblocks_installed'
wp option delete 'uiblocks_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'page_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'page_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'page_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'page_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_uicore_block_assets'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_uicore_block_assets'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_uicore_block_assets'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_uicore_block_assets'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_uicore_block_styles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_uicore_block_styles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_uicore_block_styles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_uicore_block_styles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_uicore_block_critical_styles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_uicore_block_critical_styles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_uicore_block_critical_styles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_uicore_block_critical_styles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_uicore_block_styles_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_uicore_block_styles_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_uicore_block_styles_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_uicore_block_styles_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_uicore_block_fonts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_uicore_block_fonts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_uicore_block_fonts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_uicore_block_fonts'"
