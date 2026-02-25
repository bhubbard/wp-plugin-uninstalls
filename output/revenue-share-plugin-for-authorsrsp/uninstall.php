<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('RSP_options');
delete_site_option('RSP_options');
delete_option('RSP_options[radio_option1]');
delete_site_option('RSP_options[radio_option1]');
delete_option('RSP_options[RSP_text_string]');
delete_site_option('RSP_options[RSP_text_string]');
delete_option('RSP_options[adshare_percentage]');
delete_site_option('RSP_options[adshare_percentage]');

