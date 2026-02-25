<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pqcew_addons_active_widgets');
delete_site_option('pqcew_addons_active_widgets');

