<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('clpl_settings');
delete_site_option('clpl_settings');
delete_option('clpl_activation_time');
delete_site_option('clpl_activation_time');
delete_option('clpl_review_done');
delete_site_option('clpl_review_done');
delete_option('clpl_review_remind_time');
delete_site_option('clpl_review_remind_time');

