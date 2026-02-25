<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('werstreamtes_widget_partner_token');
delete_site_option('werstreamtes_widget_partner_token');

