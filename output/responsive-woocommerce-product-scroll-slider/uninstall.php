<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wooproductscroller_prodcat');
delete_site_option('wooproductscroller_prodcat');
delete_option('wooproductscroller_no_of_products');
delete_site_option('wooproductscroller_no_of_products');
delete_option('wooproductscroller_orderBy');
delete_site_option('wooproductscroller_orderBy');
delete_option('wooproductscroller_order');
delete_site_option('wooproductscroller_order');
delete_option('wooproductscroller_title');
delete_site_option('wooproductscroller_title');

