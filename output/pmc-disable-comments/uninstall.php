<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pmc-disable-comments-toggle');
delete_site_option('pmc-disable-comments-toggle');

