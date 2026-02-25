<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('crispycohd_gc_strings');
delete_site_option('crispycohd_gc_strings');

