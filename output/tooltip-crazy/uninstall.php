<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tooltipcrazy_default_layout');
delete_site_option('tooltipcrazy_default_layout');
delete_option('tooltipcrazy_default_effect');
delete_site_option('tooltipcrazy_default_effect');

