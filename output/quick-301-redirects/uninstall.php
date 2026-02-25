<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('quick_301_redirects_');
delete_site_option('quick_301_redirects_');
delete_option('redirection_301');
delete_site_option('redirection_301');
delete_option('quick_301_redirects_plugins_page');
delete_site_option('quick_301_redirects_plugins_page');

