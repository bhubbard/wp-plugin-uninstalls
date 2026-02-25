<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('additional_tax_options');
delete_site_option('additional_tax_options');
delete_option('additional_tax_options_local');
delete_site_option('additional_tax_options_local');

