<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tamkeen_tenant_id');
delete_site_option('tamkeen_tenant_id');
delete_option('tamkeen_grid_items_per_row');
delete_site_option('tamkeen_grid_items_per_row');
delete_option('tamkeen_api_key');
delete_site_option('tamkeen_api_key');
delete_option('tamkeen_locale');
delete_site_option('tamkeen_locale');

