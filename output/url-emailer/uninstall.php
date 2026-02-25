<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('uep_pwd');
delete_site_option('uep_pwd');
delete_option('uep_to_email');
delete_site_option('uep_to_email');
delete_option('uep_subject');
delete_site_option('uep_subject');
delete_option('uep_bcc_email');
delete_site_option('uep_bcc_email');
delete_option('uep_body');
delete_site_option('uep_body');
delete_option('uep_from_name');
delete_site_option('uep_from_name');
delete_option('uep_from_email');
delete_site_option('uep_from_email');

