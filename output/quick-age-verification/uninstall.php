<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qav_logoimg');
delete_site_option('qav_logoimg');
delete_option('qav_question');
delete_site_option('qav_question');
delete_option('qav_answer_yes');
delete_site_option('qav_answer_yes');
delete_option('qav_answer_no');
delete_site_option('qav_answer_no');
delete_option('qav_not18');
delete_site_option('qav_not18');
delete_option('qav_remember');
delete_site_option('qav_remember');

