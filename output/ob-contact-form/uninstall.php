<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('obcf_to_email');
delete_site_option('obcf_to_email');
delete_option('obcf_from_email');
delete_site_option('obcf_from_email');
delete_option('obcf_from_name');
delete_site_option('obcf_from_name');
delete_option('obcf_form_subject');
delete_site_option('obcf_form_subject');
delete_option('obcf_form_success');
delete_site_option('obcf_form_success');
delete_option('obcf_form_error');
delete_site_option('obcf_form_error');

