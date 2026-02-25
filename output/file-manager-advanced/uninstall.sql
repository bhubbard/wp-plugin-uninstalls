-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fmaoptions', 'fma_blocks_dummy_data_created', 'fma_hide_review_section', 'fma_appsumo_banner_hide', '_fma_banner_hide', '_fma_banner_minimize', 'post-smtp-recommendation-notice-hidden', 'post_smtp_global_recommendation_notice_hidden', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('shortcode_id', 'status_label', 'block_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('shortcode_id', 'status_label', 'block_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('shortcode_id', 'status_label', 'block_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('shortcode_id', 'status_label', 'block_type');

