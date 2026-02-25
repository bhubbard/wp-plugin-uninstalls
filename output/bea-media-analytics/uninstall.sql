-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('image-map-pro-fragmented-saves', 'bea_media_analytics_index', 'dnh_dismissed_notices', 'bea_media_analytics_activated_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dnh_dismissed_notices');
DELETE FROM wp_usermeta WHERE meta_key IN ('dnh_dismissed_notices');
DELETE FROM wp_termmeta WHERE meta_key IN ('dnh_dismissed_notices');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dnh_dismissed_notices');

