-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pepg_saved_shortcodes', 'pepg_stream_links', 'pepg_display_options', 'pepg_urls', 'pepg_url_names', 'pepg_m3u_urls', 'pepg_m3u_url_names', 'pepg_sync_interval', 'pepg_playback_options', 'pepg_debug_sync_log', 'pepg_license_key', 'pepg_license_status', 'pepg_license_error', 'pepg_activation_date', 'pepg_notice_dismiss_period', 'pepg_notice_dismissed_permanently');

