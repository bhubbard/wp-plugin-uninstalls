<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('awfs_no_jquery');
delete_site_option('awfs_no_jquery');
delete_option('awfs_no_css');
delete_site_option('awfs_no_css');
delete_option('awfs_hiddenfields');
delete_site_option('awfs_hiddenfields');
delete_option('awfs_no_close');
delete_site_option('awfs_no_close');
delete_option('awfs_no_never_show');
delete_site_option('awfs_no_never_show');
delete_option('awfs_tagimage');
delete_site_option('awfs_tagimage');
delete_option('awfs_tagline');
delete_site_option('awfs_tagline');
delete_option('awfs_no_name_field');
delete_site_option('awfs_no_name_field');
delete_option('awfs_def_name');
delete_site_option('awfs_def_name');
delete_option('awfs_def_email');
delete_site_option('awfs_def_email');
delete_option('awfs_def_submit');
delete_site_option('awfs_def_submit');
delete_option('awfs_formstatstracking');
delete_site_option('awfs_formstatstracking');

