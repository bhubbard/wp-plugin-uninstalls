-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('allowed_astra_notices', 'bsf_analytics_track');
DELETE FROM wp_options WHERE option_name LIKE '%_analytics_optin';
DELETE FROM wp_options WHERE option_name LIKE '%_analytics_installed_time';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bsf-sb-users', '_replace_this_sidebar', '_bsf-sb-location', '_bsf-sb-exclusion');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bsf-sb-users', '_replace_this_sidebar', '_bsf-sb-location', '_bsf-sb-exclusion');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bsf-sb-users', '_replace_this_sidebar', '_bsf-sb-location', '_bsf-sb-exclusion');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bsf-sb-users', '_replace_this_sidebar', '_bsf-sb-location', '_bsf-sb-exclusion');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

