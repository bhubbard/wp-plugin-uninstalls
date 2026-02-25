<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tomas_product_tab_disable_all_feature');
delete_site_option('tomas_product_tab_disable_all_feature');

