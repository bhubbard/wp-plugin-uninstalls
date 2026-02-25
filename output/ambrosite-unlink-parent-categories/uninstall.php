<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ambrosite_unlink_parent_cats');
delete_site_option('ambrosite_unlink_parent_cats');

