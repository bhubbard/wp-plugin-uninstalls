-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mxd_dev_site_passkey', 'adminhash', 'new_admin_email', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('default_password_nag', '_mxp_dev_block_user_check', '_mxp_dev_block_user_msg', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('default_password_nag', '_mxp_dev_block_user_check', '_mxp_dev_block_user_msg', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('default_password_nag', '_mxp_dev_block_user_check', '_mxp_dev_block_user_msg', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('default_password_nag', '_mxp_dev_block_user_check', '_mxp_dev_block_user_msg', '_wp_attachment_image_alt');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%default_password_nag';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%default_password_nag';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%default_password_nag';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%default_password_nag';

