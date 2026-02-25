-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ftf_fediverse_embeds_version', 'ftf_fediverse_embeds_deleted_posts', 'ftf_fediverse_embeds_theme', 'ftf_fediverse_embeds_data_refresh_enabled', 'ftf_fediverse_embeds_data_refresh_minutes', 'ftf_fediverse_embeds_show_metrics', 'ftf_fediverse_embeds_show_post_labels', 'ftf_fediverse_embeds_include_bootstrap_styles', 'ftf_fediverse_embeds_custom_styles', 'ftf_fediverse_embeds_archival_mode');

