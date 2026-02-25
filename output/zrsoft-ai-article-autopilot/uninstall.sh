#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aiac_api_key'
wp option delete 'aiac_text_endpoint'
wp option delete 'aiac_image_endpoint'
wp option delete 'aiac_max_tokens'
wp option delete 'aiac_provider'
wp option delete 'aiac_text_models'
wp option delete 'aiac_image_models'
wp option delete 'aiac_image_sizes'
wp option delete 'aiac_style_presets'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aiac_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aiac_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aiac_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aiac_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rank_math_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rank_math_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rank_math_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rank_math_description'"
