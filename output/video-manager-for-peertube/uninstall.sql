-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cbvmfp_peertube_url', 'cbvmfp_peertube_anzahl_videos', 'cbvmfp_peertube_channel', 'cbvmfp_livestream_fallback_type', 'cbvmfp_livestream_fallback_image', 'cbvmfp_livestream_fallback_video');

