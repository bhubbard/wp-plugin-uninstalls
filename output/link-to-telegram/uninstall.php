<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ltteleg_general');
delete_site_option('ltteleg_general');
delete_option('ltteleg_modal');
delete_site_option('ltteleg_modal');

