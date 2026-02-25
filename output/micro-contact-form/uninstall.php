<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('micro_contact_form_settings_db');
delete_site_option('micro_contact_form_settings_db');

