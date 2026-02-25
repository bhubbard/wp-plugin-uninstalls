<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tr_trusty_url');
delete_site_option('tr_trusty_url');
delete_option('tr_website');
delete_site_option('tr_website');

