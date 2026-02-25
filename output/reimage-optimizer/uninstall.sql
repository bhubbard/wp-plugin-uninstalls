-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('reimop_api_key', 'reimop_auto_optimize', 'reimop_auto_sync', 'reimop_delete_media', 'reimop_video_lazyload', 'reimop_video_responsive', 'reimop_video_autoplay', 'reimop_video_loop', 'reimop_video_muted', 'reimop_video_controls', 'reimop_auto_optimized', 'reimop_setup_complete', 'reimop_wizard_force_open', 'reimop_optimize_status', 'reimop_isStartManualOptimization', 'reimop_connection_status', 'reimop_video_skip', 'reimop_video_pip', 'reimop_connected', 'reimop_optimization_complete_dismissed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('reimop_status', '_reimop_optimized_video', 'reimop_optimized_size');
DELETE FROM wp_usermeta WHERE meta_key IN ('reimop_status', '_reimop_optimized_video', 'reimop_optimized_size');
DELETE FROM wp_termmeta WHERE meta_key IN ('reimop_status', '_reimop_optimized_video', 'reimop_optimized_size');
DELETE FROM wp_commentmeta WHERE meta_key IN ('reimop_status', '_reimop_optimized_video', 'reimop_optimized_size');

