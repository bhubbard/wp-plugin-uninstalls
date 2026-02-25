#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'reimop_api_key'
wp option delete 'reimop_auto_optimize'
wp option delete 'reimop_auto_sync'
wp option delete 'reimop_delete_media'
wp option delete 'reimop_video_lazyload'
wp option delete 'reimop_video_responsive'
wp option delete 'reimop_video_autoplay'
wp option delete 'reimop_video_loop'
wp option delete 'reimop_video_muted'
wp option delete 'reimop_video_controls'
wp option delete 'reimop_auto_optimized'
wp option delete 'reimop_setup_complete'
wp option delete 'reimop_wizard_force_open'
wp option delete 'reimop_optimize_status'
wp option delete 'reimop_isStartManualOptimization'
wp option delete 'reimop_connection_status'
wp option delete 'reimop_video_skip'
wp option delete 'reimop_video_pip'
wp option delete 'reimop_connected'
wp option delete 'reimop_optimization_complete_dismissed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'reimop_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'reimop_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'reimop_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'reimop_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_reimop_optimized_video'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_reimop_optimized_video'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_reimop_optimized_video'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_reimop_optimized_video'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'reimop_optimized_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'reimop_optimized_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'reimop_optimized_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'reimop_optimized_size'"
