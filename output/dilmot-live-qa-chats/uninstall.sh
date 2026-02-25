#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stream_info_box_html'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stream_info_box_html'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stream_info_box_html'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stream_info_box_html'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stream_html'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stream_html'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stream_html'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stream_html'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stream_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stream_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stream_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stream_status'"
