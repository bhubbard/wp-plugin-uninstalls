-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'recently_activated', 'Pcode_Apf_Page_Settings', 'PcodeApfPageSettings', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dismissed_wp_pointers');
DELETE FROM wp_usermeta WHERE meta_key IN ('dismissed_wp_pointers');
DELETE FROM wp_termmeta WHERE meta_key IN ('dismissed_wp_pointers');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dismissed_wp_pointers');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';

