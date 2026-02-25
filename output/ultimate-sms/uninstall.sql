-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smswp_option', 'smswp_bitly_group_guid');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mobile_number', 'smswp_sms_number');
DELETE FROM wp_usermeta WHERE meta_key IN ('mobile_number', 'smswp_sms_number');
DELETE FROM wp_termmeta WHERE meta_key IN ('mobile_number', 'smswp_sms_number');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mobile_number', 'smswp_sms_number');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%';

