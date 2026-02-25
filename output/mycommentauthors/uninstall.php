<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mca_mail_limit');
delete_site_option('mca_mail_limit');
delete_option('mca_Mail_From_Name');
delete_site_option('mca_Mail_From_Name');
delete_option('mca_Mail_From_Email');
delete_site_option('mca_Mail_From_Email');
delete_option('mca_gravatar_bg');
delete_site_option('mca_gravatar_bg');
delete_option('mca_gravatar_border');
delete_site_option('mca_gravatar_border');
delete_option('mca_Reserve_List');
delete_site_option('mca_Reserve_List');
delete_option('mca_db_version');
delete_site_option('mca_db_version');
delete_option('MyCommentAuthors');
delete_site_option('MyCommentAuthors');

