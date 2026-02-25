<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('logout_redirect_type');
delete_site_option('logout_redirect_type');
delete_option('logout_redirect_customise_url');
delete_site_option('logout_redirect_customise_url');

