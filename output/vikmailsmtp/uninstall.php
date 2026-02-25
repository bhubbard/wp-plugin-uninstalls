<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vikmailsmtp_host');
delete_site_option('vikmailsmtp_host');
delete_option('vikmailsmtp_skipwizard');
delete_site_option('vikmailsmtp_skipwizard');
delete_option('vikmailsmtp_port');
delete_site_option('vikmailsmtp_port');
delete_option('vikmailsmtp_security');
delete_site_option('vikmailsmtp_security');
delete_option('vikmailsmtp_auth');
delete_site_option('vikmailsmtp_auth');
delete_option('vikmailsmtp_sender');
delete_site_option('vikmailsmtp_sender');
delete_option('vikmailsmtp_user');
delete_site_option('vikmailsmtp_user');
delete_option('vikmailsmtp_pass');
delete_site_option('vikmailsmtp_pass');
delete_option('vikmailsmtp_logging');
delete_site_option('vikmailsmtp_logging');
delete_option('vikmailsmtp_logs');
delete_site_option('vikmailsmtp_logs');

