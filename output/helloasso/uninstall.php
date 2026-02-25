<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ha-slug');
delete_site_option('ha-slug');
delete_option('ha-campaign');
delete_site_option('ha-campaign');
delete_option('ha-error');
delete_site_option('ha-error');
delete_option('ha-sync');
delete_site_option('ha-sync');
delete_option('ha-name');
delete_site_option('ha-name');

