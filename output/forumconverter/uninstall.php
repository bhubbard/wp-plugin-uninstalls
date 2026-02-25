<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fc_src_hostname');
delete_site_option('fc_src_hostname');
delete_option('fc_src_databasename');
delete_site_option('fc_src_databasename');
delete_option('fc_src_username');
delete_site_option('fc_src_username');
delete_option('fc_src_password');
delete_site_option('fc_src_password');
delete_option('fc_src_type');
delete_site_option('fc_src_type');
delete_option('fc_src_version');
delete_site_option('fc_src_version');
delete_option('fc_src_prefix');
delete_site_option('fc_src_prefix');
delete_option('fc_src_upload_path');
delete_site_option('fc_src_upload_path');
delete_option('fc_src_avatar_path');
delete_site_option('fc_src_avatar_path');
delete_option('fc_dst_type');
delete_site_option('fc_dst_type');
delete_option('fc_dst_version');
delete_site_option('fc_dst_version');
delete_option('fc_dst_use_bbcode_lite');
delete_site_option('fc_dst_use_bbcode_lite');
delete_option('fc_dst_hostname');
delete_site_option('fc_dst_hostname');
delete_option('fc_dst_databasename');
delete_site_option('fc_dst_databasename');
delete_option('fc_dst_username');
delete_site_option('fc_dst_username');
delete_option('fc_dst_password');
delete_site_option('fc_dst_password');
delete_option('fc_dst_prefix');
delete_site_option('fc_dst_prefix');
delete_option('fc_op_method');
delete_site_option('fc_op_method');
delete_option('fc_dst_upload_path');
delete_site_option('fc_dst_upload_path');

