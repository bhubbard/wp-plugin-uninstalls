<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('just_contact_form_ajax_image');
delete_site_option('just_contact_form_ajax_image');

