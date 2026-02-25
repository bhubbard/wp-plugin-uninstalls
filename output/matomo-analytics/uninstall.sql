-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ajdg_matomo_siteid', 'ajdg_matomo_siteurl', 'ajdg_matomo_active', 'ajdg_matomo_track_feed_clicks', 'ajdg_matomo_track_error_pages', 'ajdg_matomo_track_incognito', 'ajdg_matomo_heartbeat_enable', 'ajdg_matomo_wc_downloads', 'ajdg_matomo_track_feed_impressions', 'ajdg_matomo_high_accuracy', 'ajdg_matomo_hide_review', 'ajdg_activate_matomo-analytics', 'ajdg_update_matomo-analytics');

