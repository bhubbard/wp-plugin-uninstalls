#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lnjph_install'
wp option delete 'lnjph_install_date'
wp option delete 'lnjph_uninstall_date'
wp option delete 'lnjph_plugin_version'
wp option delete 'lnjph_default_post_thumbnail'
wp option delete 'lnjph_settings_update'
wp option delete 'lnjph_sub_mode'
wp option delete 'lnjph_custom_content_solo'
wp option delete 'placehold_co_font'
wp option delete 'placehold_co_text'
wp option delete 'placehold_co_color'
wp option delete 'placehold_co_bgcolor'
wp option delete 'placeimg_com_mode'
wp option delete 'placeimg_com_cat'
wp option delete 'picsum_photos_mode'
wp option delete 'doodleipsum_mode'
wp option delete 'doodleipsum_bgcolor'
wp option delete 'lnjph_sub_thumbnail'
wp option delete 'placehodor_sub_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
