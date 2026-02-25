-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rocketcdn_api_key', 'rocketcdn_cdn_url', 'rocketcdn_previous_cdn_url', 'rocketcdn_current_version', 'rocketcdn_previous_version', 'rocketcdn_customer_data');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rocketcdn_dismissed_notices');
DELETE FROM wp_usermeta WHERE meta_key IN ('rocketcdn_dismissed_notices');
DELETE FROM wp_termmeta WHERE meta_key IN ('rocketcdn_dismissed_notices');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rocketcdn_dismissed_notices');

