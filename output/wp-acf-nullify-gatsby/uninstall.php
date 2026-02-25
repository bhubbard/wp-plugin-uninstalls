<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nullify_empty_fields_for_acf_types');
delete_site_option('nullify_empty_fields_for_acf_types');

