<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mbch_mnml_footnotes');
delete_site_option('mbch_mnml_footnotes');

