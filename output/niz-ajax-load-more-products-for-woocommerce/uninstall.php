<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('niz_woo_ajload');
delete_site_option('niz_woo_ajload');

// Delete Transients
delete_transient('niz_ajax_loadmore_products_custom_query');
delete_site_transient('niz_ajax_loadmore_products_custom_query');

