-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('linnworks_tracking_number', 'linnworks_tracking_provider');
DELETE FROM wp_usermeta WHERE meta_key IN ('linnworks_tracking_number', 'linnworks_tracking_provider');
DELETE FROM wp_termmeta WHERE meta_key IN ('linnworks_tracking_number', 'linnworks_tracking_provider');
DELETE FROM wp_commentmeta WHERE meta_key IN ('linnworks_tracking_number', 'linnworks_tracking_provider');

