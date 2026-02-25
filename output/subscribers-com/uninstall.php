<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('subscribers_lang');
delete_site_option('subscribers_lang');
delete_option('subscribers_hash');
delete_site_option('subscribers_hash');
delete_option('subscribers_plugin_do_activation_redirect');
delete_site_option('subscribers_plugin_do_activation_redirect');

