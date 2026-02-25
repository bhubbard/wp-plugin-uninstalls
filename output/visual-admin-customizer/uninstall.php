<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ws_vac_customizations');
delete_site_option('ws_vac_customizations');
delete_option('ws_vac_settings');
delete_site_option('ws_vac_settings');

