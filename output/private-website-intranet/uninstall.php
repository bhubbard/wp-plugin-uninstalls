<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('private-website-intranet-redirect-after-login');
delete_site_option('private-website-intranet-redirect-after-login');
delete_option('private-website-intranet-login-page');
delete_site_option('private-website-intranet-login-page');
delete_option('private-website-intranet-use-shortcode');
delete_site_option('private-website-intranet-use-shortcode');
delete_option('private-website-intranet-redirect-after-login-page');
delete_site_option('private-website-intranet-redirect-after-login-page');

