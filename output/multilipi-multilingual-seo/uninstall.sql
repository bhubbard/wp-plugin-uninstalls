-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('multilipi_api_key', 'rewrite_rules', 'multilipi_destination_languages', 'multilipi_languages', 'multilipi_selected_langs', 'multilipi_slug_map', 'multilipi_subdir_selected_langs', 'mlms_subdir_needs_sync', 'mlms_plugin_version', 'mlms_flush_rewrite_needed', 'mlms_notice_dismissed', 'mlms_languages');

