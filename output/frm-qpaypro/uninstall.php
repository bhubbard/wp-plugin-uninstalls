<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('frm_qpayproform');
delete_site_option('frm_qpayproform');
delete_option('frm_qpayproform_test');
delete_site_option('frm_qpayproform_test');

