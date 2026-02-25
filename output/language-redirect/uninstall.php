<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('language_redirect_default_redirect_location');
delete_site_option('language_redirect_default_redirect_location');
delete_option('language_redirect_redirect_mapping');
delete_site_option('language_redirect_redirect_mapping');

