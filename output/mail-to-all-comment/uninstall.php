<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qw_MTA_default_sub');
delete_site_option('qw_MTA_default_sub');
delete_option('qw_MTA_subject');
delete_site_option('qw_MTA_subject');
delete_option('qw_MTA_mail');
delete_site_option('qw_MTA_mail');
delete_option('qw_MTA_list');
delete_site_option('qw_MTA_list');
delete_option('qw_MTA_content');
delete_site_option('qw_MTA_content');
delete_option('qw_MTA_post');
delete_site_option('qw_MTA_post');
delete_option('qw_MTA_notsentpost');
delete_site_option('qw_MTA_notsentpost');

