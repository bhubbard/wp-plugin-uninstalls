#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'anwp_pg_plugin_settings'
wp option delete 'anwp_pg_elementor_do_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_anwp_extras_video_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_anwp_extras_video_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_anwp_extras_video_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_anwp_extras_video_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_anwp_extras_video_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_anwp_extras_video_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_anwp_extras_video_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_anwp_extras_video_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_anwp_extras_gallery_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_anwp_extras_gallery_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_anwp_extras_gallery_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_anwp_extras_gallery_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_anwp_extras_category_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_anwp_extras_category_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_anwp_extras_category_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_anwp_extras_category_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_anwp_pg_category_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_anwp_pg_category_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_anwp_pg_category_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_anwp_pg_category_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_anwp_pg_category_text_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_anwp_pg_category_text_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_anwp_pg_category_text_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_anwp_pg_category_text_color'"
