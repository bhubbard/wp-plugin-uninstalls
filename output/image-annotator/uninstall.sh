#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpia_annotation_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpia_annotation_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpia_annotation_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpia_annotation_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpia_annotation_canvas_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpia_annotation_canvas_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpia_annotation_canvas_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpia_annotation_canvas_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpia_annotation_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpia_annotation_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpia_annotation_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpia_annotation_image'"
