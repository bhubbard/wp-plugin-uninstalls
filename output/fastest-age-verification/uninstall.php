<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('age_verification_logo');
delete_site_option('age_verification_logo');
delete_option('age_verification_yes_button_color');
delete_site_option('age_verification_yes_button_color');
delete_option('age_verification_no_button_color');
delete_site_option('age_verification_no_button_color');
delete_option('age_verification_min_age');
delete_site_option('age_verification_min_age');

