<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simple-email-form-version');
delete_site_option('simple-email-form-version');
delete_option('se-options');
delete_site_option('se-options');
delete_option('simple-email-form-options');
delete_site_option('simple-email-form-options');

