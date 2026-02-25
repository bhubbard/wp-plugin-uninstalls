<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('acf_visibility_option');
delete_site_option('acf_visibility_option');
delete_option('acf_allowed_emails');
delete_site_option('acf_allowed_emails');
delete_option('acf_allowed_roles');
delete_site_option('acf_allowed_roles');
delete_option('devtoolacf_visibility_option');
delete_site_option('devtoolacf_visibility_option');
delete_option('devtoolacf_allowed_emails');
delete_site_option('devtoolacf_allowed_emails');
delete_option('devtoolacf_allowed_roles');
delete_site_option('devtoolacf_allowed_roles');

