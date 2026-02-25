<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('buzz_lang');
delete_site_option('buzz_lang');
delete_option('buzz_button_type');
delete_site_option('buzz_button_type');
delete_option('buzz_set_lang');
delete_site_option('buzz_set_lang');

