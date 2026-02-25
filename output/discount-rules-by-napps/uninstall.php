<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('napps_discountrules_installed');
delete_site_option('napps_discountrules_installed');
delete_option('napps_discountrules_version');
delete_site_option('napps_discountrules_version');

