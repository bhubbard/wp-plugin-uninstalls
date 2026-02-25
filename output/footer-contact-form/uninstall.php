<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fcfh_thank_you_page');
delete_site_option('fcfh_thank_you_page');
delete_option('fcfh_extra_css');
delete_site_option('fcfh_extra_css');

