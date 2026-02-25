-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('queantic_analytics_do_redirect', 'queantic_analytics_tracking_special_home', 'queantic_analytics_tracking_special_blog', 'queantic_analytics_tracking_special_404', 'queantic_analytics_tracking_special_search', 'queantic_analytics_tracking_special_archive', 'queantic_analytics_tracking_special_wc_shop', 'queantic_analytics_saved_count');
DELETE FROM wp_options WHERE option_name LIKE 'queantic_analytics_tracking_special_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ptp_tracking_code');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ptp_tracking_code');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ptp_tracking_code');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ptp_tracking_code');

