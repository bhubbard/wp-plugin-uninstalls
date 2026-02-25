<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('eraclito_wc_pause_enabled');
delete_site_option('eraclito_wc_pause_enabled');
delete_option('eraclito_wc_pause_message');
delete_site_option('eraclito_wc_pause_message');
delete_option('eraclito_wc_pause_message_position');
delete_site_option('eraclito_wc_pause_message_position');
delete_option('eraclito_wc_pause_message_bg_color');
delete_site_option('eraclito_wc_pause_message_bg_color');
delete_option('eraclito_wc_pause_message_text_color');
delete_site_option('eraclito_wc_pause_message_text_color');

