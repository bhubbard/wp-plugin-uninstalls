<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ljpl-trakttv-use-css');
delete_site_option('ljpl-trakttv-use-css');
delete_option('ljpl-trakttv-has-private-account');
delete_site_option('ljpl-trakttv-has-private-account');
delete_option('ljpl-trakttv-login');
delete_site_option('ljpl-trakttv-login');
delete_option('ljpl-trakttv-password');
delete_site_option('ljpl-trakttv-password');
delete_option('ljpl-trakttv-api-key');
delete_site_option('ljpl-trakttv-api-key');

