-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('utm_event_tracker_settings', 'utm_event_tracker_dismiss_cache_notice', 'utm_event_tracker_overview_settings', 'utm_event_tracker_stats_updating', 'utm_event_tracker_woocommerce_session_started');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('utm_event_tracker_session');
DELETE FROM wp_usermeta WHERE meta_key IN ('utm_event_tracker_session');
DELETE FROM wp_termmeta WHERE meta_key IN ('utm_event_tracker_session');
DELETE FROM wp_commentmeta WHERE meta_key IN ('utm_event_tracker_session');

