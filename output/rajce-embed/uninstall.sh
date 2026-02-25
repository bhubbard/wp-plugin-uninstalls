#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rajce_embed_image_captions'
wp option delete 'rajce_embed_gallery_captions'
wp option delete 'rajce_embed_thumbnail_size_w'
wp option delete 'rajce_embed_thumbnail_size_h'
wp option delete 'rajce_embed_thumbnail_crop'
wp option delete 'rajce_embed_omit_album_cover'
wp option delete 'rajce_embed_thumbnail_source'
wp option delete 'rajce_embed_version'
wp option delete 'rajce_embed_thumb_default'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'rajce_embed_%'"
wp option delete 'rajce_embed_compatib_wp_rajce_version'

