<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('WCWIZARD_V');
delete_site_option('WCWIZARD_V');
delete_option('wcwizard_post_types');
delete_site_option('wcwizard_post_types');

