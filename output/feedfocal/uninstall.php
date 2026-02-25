<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('feedfocal_activation_redirect');
delete_site_option('feedfocal_activation_redirect');
delete_option('feedfocal_survey_code');
delete_site_option('feedfocal_survey_code');

