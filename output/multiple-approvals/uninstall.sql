-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mait_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mait_approval_status', 'mait_approval_user');
DELETE FROM wp_usermeta WHERE meta_key IN ('mait_approval_status', 'mait_approval_user');
DELETE FROM wp_termmeta WHERE meta_key IN ('mait_approval_status', 'mait_approval_user');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mait_approval_status', 'mait_approval_user');

