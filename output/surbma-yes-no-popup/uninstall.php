<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cps_framework_fields');
delete_site_option('cps_framework_fields');
delete_option('surbma_yes_no_popup_fields');
delete_site_option('surbma_yes_no_popup_fields');

