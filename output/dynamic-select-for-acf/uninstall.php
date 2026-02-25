<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dynamic_select_for_acf_advanced_dynamic_selector_options');
delete_site_option('dynamic_select_for_acf_advanced_dynamic_selector_options');

