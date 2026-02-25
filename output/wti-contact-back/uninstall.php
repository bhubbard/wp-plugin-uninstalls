<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wti_contact_back_use_jquery');
delete_site_option('wti_contact_back_use_jquery');
delete_option('wti_contact_back_to_email');
delete_site_option('wti_contact_back_to_email');
delete_option('wti_contact_back');
delete_site_option('wti_contact_back');

