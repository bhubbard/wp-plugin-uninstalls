<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('restapipo_domain_url_input');
delete_site_option('restapipo_domain_url_input');

