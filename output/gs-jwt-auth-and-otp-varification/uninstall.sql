-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_phone', '_gs_jwt_fs_otp_use_staus', '_gs_jwt_fs_otp', '_gs_jwt_fs_otp_exp');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_phone', '_gs_jwt_fs_otp_use_staus', '_gs_jwt_fs_otp', '_gs_jwt_fs_otp_exp');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_phone', '_gs_jwt_fs_otp_use_staus', '_gs_jwt_fs_otp', '_gs_jwt_fs_otp_exp');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_phone', '_gs_jwt_fs_otp_use_staus', '_gs_jwt_fs_otp', '_gs_jwt_fs_otp_exp');

