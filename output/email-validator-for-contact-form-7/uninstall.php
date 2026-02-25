<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mbv_wpcf7_email_validator_for_contact_form_7');
delete_site_option('mbv_wpcf7_email_validator_for_contact_form_7');

