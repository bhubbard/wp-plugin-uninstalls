<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_cmt_mimes');
delete_site_option('_cmt_mimes');
delete_option('_cmt_max_upload_size');
delete_site_option('_cmt_max_upload_size');
delete_option('_cmt_size_unit');
delete_site_option('_cmt_size_unit');
delete_option('_cmt_activated');
delete_site_option('_cmt_activated');

