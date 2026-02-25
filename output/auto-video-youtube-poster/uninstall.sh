#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'credentials_images_to_youtube'
wp option delete 'code_images_to_youtube'
wp option delete 'intro_image_to_youtube'
wp option delete 'permisos_crear_videos'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sended-post-to-youtube'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sended-post-to-youtube'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sended-post-to-youtube'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sended-post-to-youtube'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'titulo_alternativo_texto'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'titulo_alternativo_texto'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'titulo_alternativo_texto'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'titulo_alternativo_texto'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'songs-to-youtube'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'songs-to-youtube'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'songs-to-youtube'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'songs-to-youtube'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'frames-to-youtube'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'frames-to-youtube'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'frames-to-youtube'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'frames-to-youtube'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'link_youtube_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'link_youtube_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'link_youtube_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'link_youtube_desc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tags_youtube'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tags_youtube'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tags_youtube'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tags_youtube'"
