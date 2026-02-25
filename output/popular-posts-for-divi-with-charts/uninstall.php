<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tpdivi_logic_setting');
delete_site_option('tpdivi_logic_setting');
delete_option('tpdivi_post_types');
delete_site_option('tpdivi_post_types');

