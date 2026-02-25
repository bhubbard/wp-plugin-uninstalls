<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('external_redirect_path');
delete_site_option('external_redirect_path');
delete_option('external_redirect_url');
delete_site_option('external_redirect_url');
delete_option('external_redirect_method');
delete_site_option('external_redirect_method');
delete_option('external_redirect');
delete_site_option('external_redirect');

