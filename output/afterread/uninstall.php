<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('afterRead_secure');
delete_site_option('afterRead_secure');
delete_option('afterRead_suggestion_name');
delete_site_option('afterRead_suggestion_name');
delete_option('afterRead_custom_html');
delete_site_option('afterRead_custom_html');
delete_option('afterRead_option_ichi');
delete_site_option('afterRead_option_ichi');
delete_option('afterRead_option_ni');
delete_site_option('afterRead_option_ni');
delete_option('afterRead_option_san');
delete_site_option('afterRead_option_san');
delete_option('afterRead_option_inchi');
delete_site_option('afterRead_option_inchi');

