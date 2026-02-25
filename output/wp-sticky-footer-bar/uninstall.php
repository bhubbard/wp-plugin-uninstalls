<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('floating_sticky_bar_cat');
delete_site_option('floating_sticky_bar_cat');

