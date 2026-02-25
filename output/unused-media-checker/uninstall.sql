-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sidebars_widgets', 'umchk_admin_notice', 'umchk_pg_admin_notice');
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('advanced_ads_ad_options', '_wp_attached_file');
DELETE FROM wp_usermeta WHERE meta_key IN ('advanced_ads_ad_options', '_wp_attached_file');
DELETE FROM wp_termmeta WHERE meta_key IN ('advanced_ads_ad_options', '_wp_attached_file');
DELETE FROM wp_commentmeta WHERE meta_key IN ('advanced_ads_ad_options', '_wp_attached_file');

