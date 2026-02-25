<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wowp_activation_redirect');
delete_site_option('wowp_activation_redirect');
delete_option('wowp_phone_number');
delete_site_option('wowp_phone_number');
delete_option('wowp_button_label');
delete_site_option('wowp_button_label');

