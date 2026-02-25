<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_alter_inventory_tab_payament_section');
delete_site_option('wc_alter_inventory_tab_payament_section');
delete_option('alter_inventory_bill_ship_section');
delete_site_option('alter_inventory_bill_ship_section');
delete_option('alter_inventory_shortcodes_section');
delete_site_option('alter_inventory_shortcodes_section');

