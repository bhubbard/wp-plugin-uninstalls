-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bsf_analytics_track');
DELETE FROM wp_options WHERE option_name LIKE '%_analytics_optin';
DELETE FROM wp_options WHERE option_name LIKE '%_analytics_installed_time';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template');

