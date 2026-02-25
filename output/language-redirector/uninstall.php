<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('language_redirector_options');
delete_site_option('language_redirector_options');
delete_option('language_redirector_options_url');
delete_site_option('language_redirector_options_url');

