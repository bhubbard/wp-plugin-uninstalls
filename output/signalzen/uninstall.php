<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('public_token_field');
delete_site_option('public_token_field');
delete_option('signal_zen_plugin_do_activation_redirect');
delete_site_option('signal_zen_plugin_do_activation_redirect');
delete_option('name_form_to');
delete_site_option('name_form_to');
delete_option('name_form_subject');
delete_site_option('name_form_subject');

