<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bib_site_key');
delete_site_option('bib_site_key');
delete_option('bib_secret_key');
delete_site_option('bib_secret_key');
delete_option('bib_login_check_disable');
delete_site_option('bib_login_check_disable');

