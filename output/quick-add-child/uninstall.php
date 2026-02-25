<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qac-display-activation-message');
delete_site_option('qac-display-activation-message');
delete_option('quick-add-child');
delete_site_option('quick-add-child');

