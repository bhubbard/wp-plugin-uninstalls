-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('csf_demo_mode', '_kp_pinterest_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('kp_pinterest_options');
DELETE FROM wp_usermeta WHERE meta_key IN ('kp_pinterest_options');
DELETE FROM wp_termmeta WHERE meta_key IN ('kp_pinterest_options');
DELETE FROM wp_commentmeta WHERE meta_key IN ('kp_pinterest_options');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%';

