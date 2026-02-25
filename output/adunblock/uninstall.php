<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('adunblock_id');
delete_site_option('adunblock_id');
delete_option('my_plugin_do_activation_redirect');
delete_site_option('my_plugin_do_activation_redirect');

// Delete Transients
delete_transient('code_adunblock');
delete_site_transient('code_adunblock');
delete_transient('code_adunblock_lt');
delete_site_transient('code_adunblock_lt');

