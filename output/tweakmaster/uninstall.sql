-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'dnh_dismissed_notices', 'nextgenthemes', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dnh_dismissed_notices');
DELETE FROM wp_usermeta WHERE meta_key IN ('dnh_dismissed_notices');
DELETE FROM wp_termmeta WHERE meta_key IN ('dnh_dismissed_notices');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dnh_dismissed_notices');

