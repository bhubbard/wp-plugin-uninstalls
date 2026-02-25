-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ayudawp_msps_settings', 'msps_notifications', 'ayudawp_msps_activation_notice');
DELETE FROM wp_options WHERE option_name LIKE 'msps_notified_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_msps_scheduled_sales', '_msps_overlap_priority');
DELETE FROM wp_usermeta WHERE meta_key IN ('_msps_scheduled_sales', '_msps_overlap_priority');
DELETE FROM wp_termmeta WHERE meta_key IN ('_msps_scheduled_sales', '_msps_overlap_priority');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_msps_scheduled_sales', '_msps_overlap_priority');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'msps_dismissed_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'msps_dismissed_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'msps_dismissed_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'msps_dismissed_%';

