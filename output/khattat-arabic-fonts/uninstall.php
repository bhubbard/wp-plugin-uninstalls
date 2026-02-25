<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('khattat_arabic_activation_time');
delete_site_option('khattat_arabic_activation_time');
delete_option('khattat_last_notice_time');
delete_site_option('khattat_last_notice_time');

