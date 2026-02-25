#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tma_webtools_option'
wp option delete 'tma_webtools_option_targeting'
wp option delete 'tma-webtools-Integrations'
wp option delete 'tma-webtools-events'
wp option delete 'tma_webtools_option_wc'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tma_segment_editor_unit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tma_segment_editor_unit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tma_segment_editor_unit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tma_segment_editor_unit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tma_segment_editor_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tma_segment_editor_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tma_segment_editor_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tma_segment_editor_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tma_segment_editor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tma_segment_editor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tma_segment_editor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tma_segment_editor'"
