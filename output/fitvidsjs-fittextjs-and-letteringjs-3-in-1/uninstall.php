<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('js3n1_options');
delete_site_option('js3n1_options');
delete_option(' js3n1_options');
delete_site_option(' js3n1_options');

