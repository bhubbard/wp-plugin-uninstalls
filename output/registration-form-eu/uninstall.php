<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('registration_form_eu_options_cfg');
delete_site_option('registration_form_eu_options_cfg');
delete_option('registration_form_eu_options');
delete_site_option('registration_form_eu_options');

