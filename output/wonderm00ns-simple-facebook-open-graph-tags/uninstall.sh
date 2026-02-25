#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wonderm00n_open_graph_settings'
wp option delete 'wonderm00n_open_graph_admin_notice'
wp option delete 'wonderm00n_open_graph_version'
wp option delete 'post-smtp-recommendation-notice-hidden'
wp option delete 'post_smtp_global_recommendation_notice_hidden'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webdados_fb_open_graph_specific_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webdados_fb_open_graph_specific_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webdados_fb_open_graph_specific_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webdados_fb_open_graph_specific_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webdados_fb_open_graph_specific_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webdados_fb_open_graph_specific_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webdados_fb_open_graph_specific_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webdados_fb_open_graph_specific_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webdados_fb_open_graph_specific_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webdados_fb_open_graph_specific_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webdados_fb_open_graph_specific_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webdados_fb_open_graph_specific_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
