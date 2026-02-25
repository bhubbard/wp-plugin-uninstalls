#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bts_plexorin_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bts_plexorin_cancel_share'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bts_plexorin_cancel_share'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bts_plexorin_cancel_share'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bts_plexorin_cancel_share'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bts_plexorin_custom_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bts_plexorin_custom_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bts_plexorin_custom_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bts_plexorin_custom_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bts_plexorin_custom_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bts_plexorin_custom_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bts_plexorin_custom_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bts_plexorin_custom_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bts_plexorin_custom_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bts_plexorin_custom_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bts_plexorin_custom_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bts_plexorin_custom_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_description'"
