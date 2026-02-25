-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('comfino_plugin_current_version', 'comfino_plugin_updated', 'comfino_plugin_prev_version', 'comfino_plugin_updated_at', 'comfino_plugin_reset_results', 'comfino_error_log_cleared', 'comfino_debug_log_cleared', 'comfino_github_version_check');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('comfino_debug_notice_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('comfino_debug_notice_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('comfino_debug_notice_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('comfino_debug_notice_dismissed');

