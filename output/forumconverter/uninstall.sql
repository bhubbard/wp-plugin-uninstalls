-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fc_src_hostname', 'fc_src_databasename', 'fc_src_username', 'fc_src_password', 'fc_src_type', 'fc_src_version', 'fc_src_prefix', 'fc_src_upload_path', 'fc_src_avatar_path', 'fc_dst_type', 'fc_dst_version', 'fc_dst_use_bbcode_lite', 'fc_dst_hostname', 'fc_dst_databasename', 'fc_dst_username', 'fc_dst_password', 'fc_dst_prefix', 'fc_op_method', 'fc_dst_upload_path');

