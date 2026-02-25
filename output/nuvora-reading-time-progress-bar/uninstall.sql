-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nvrtp_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_nvrtp_disable_badge', '_nvrtp_reading_time_override', '_nvrtp_disable_progress');
DELETE FROM wp_usermeta WHERE meta_key IN ('_nvrtp_disable_badge', '_nvrtp_reading_time_override', '_nvrtp_disable_progress');
DELETE FROM wp_termmeta WHERE meta_key IN ('_nvrtp_disable_badge', '_nvrtp_reading_time_override', '_nvrtp_disable_progress');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_nvrtp_disable_badge', '_nvrtp_reading_time_override', '_nvrtp_disable_progress');

