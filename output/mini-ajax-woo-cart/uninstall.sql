-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('majc_first_activation', 'majc_dismissed_notices');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('uwcc_settings', 'majc_dismissed_notices');
DELETE FROM wp_usermeta WHERE meta_key IN ('uwcc_settings', 'majc_dismissed_notices');
DELETE FROM wp_termmeta WHERE meta_key IN ('uwcc_settings', 'majc_dismissed_notices');
DELETE FROM wp_commentmeta WHERE meta_key IN ('uwcc_settings', 'majc_dismissed_notices');

