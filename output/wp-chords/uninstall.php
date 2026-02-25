<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpchords_toggle_fontsize');
delete_site_option('wpchords_toggle_fontsize');
delete_option('wpchords_toggle_transpose');
delete_site_option('wpchords_toggle_transpose');
delete_option('wpchords_toggle_alternating');
delete_site_option('wpchords_toggle_alternating');
delete_option('wpchords_toggle_print');
delete_site_option('wpchords_toggle_print');
delete_option('wpchords_string_printfooter');
delete_site_option('wpchords_string_printfooter');
delete_option('wpchords_string_deamp');
delete_site_option('wpchords_string_deamp');
delete_option('wpchords_toggle_monospace');
delete_site_option('wpchords_toggle_monospace');

