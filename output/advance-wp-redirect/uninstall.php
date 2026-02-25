<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('xsawrlite-masteroptions');
delete_site_option('xsawrlite-masteroptions');
delete_option('xsawrlite_easy_redirect');
delete_site_option('xsawrlite_easy_redirect');

