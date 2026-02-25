<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rc_db_version');
delete_site_option('rc_db_version');
delete_option('rc_linktext');
delete_site_option('rc_linktext');
delete_option('rc_beforelink');
delete_site_option('rc_beforelink');
delete_option('rc_afterlink');
delete_site_option('rc_afterlink');
delete_option('rc_cookie_days');
delete_site_option('rc_cookie_days');
delete_option('rc_threshold');
delete_site_option('rc_threshold');
delete_option('rc_textarea_msg');
delete_site_option('rc_textarea_msg');
delete_option('rc_allow_reporter_comment');
delete_site_option('rc_allow_reporter_comment');
delete_option('rc_success');
delete_site_option('rc_success');
delete_option('rc_already');
delete_site_option('rc_already');
delete_option('rc_failure');
delete_site_option('rc_failure');
delete_option('rc_enable_email');
delete_site_option('rc_enable_email');
delete_option('rc_email');
delete_site_option('rc_email');
delete_option('rc_email_subject');
delete_site_option('rc_email_subject');
delete_option('rc_email_msg');
delete_site_option('rc_email_msg');
delete_option('rc_publickey');
delete_site_option('rc_publickey');
delete_option('rc_privatekey');
delete_site_option('rc_privatekey');
delete_option('rc_valid_error');
delete_site_option('rc_valid_error');
delete_option('rc_error');
delete_site_option('rc_error');

