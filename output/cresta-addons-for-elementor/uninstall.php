<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cresta_addons_for_elementor');
delete_site_option('cresta_addons_for_elementor');

