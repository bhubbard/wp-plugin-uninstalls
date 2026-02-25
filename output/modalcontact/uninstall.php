<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mcf_link_url');
delete_site_option('mcf_link_url');
delete_option('mcf_link_title');
delete_site_option('mcf_link_title');
delete_option('mcf_form_subject');
delete_site_option('mcf_form_subject');
delete_option('mcf_form_title');
delete_site_option('mcf_form_title');
delete_option('mcf_subject');
delete_site_option('mcf_subject');
delete_option('mcf_form_cc_sender');
delete_site_option('mcf_form_cc_sender');

