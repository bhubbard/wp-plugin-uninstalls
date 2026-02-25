<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tags2bb_footer');
delete_site_option('tags2bb_footer');
delete_option('tags2bb_new_window');
delete_site_option('tags2bb_new_window');
delete_option('tags2bb_label');
delete_site_option('tags2bb_label');

