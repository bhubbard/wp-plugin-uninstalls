<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('NEURLRP_from_name');
delete_site_option('NEURLRP_from_name');
delete_option('neurlrp_from_name');
delete_site_option('neurlrp_from_name');
delete_option('neurlrp_from_email');
delete_site_option('neurlrp_from_email');
delete_option('neurlrp_admin_email');
delete_site_option('neurlrp_admin_email');
delete_option('neurlrp_cc_email');
delete_site_option('neurlrp_cc_email');
delete_option('neurlrp_bcc_email');
delete_site_option('neurlrp_bcc_email');
delete_option('NEURLRP_from_email');
delete_site_option('NEURLRP_from_email');

