<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ultimate_site_builder_by_pnx_uin88_for_woocommerce_template_token');
delete_site_option('ultimate_site_builder_by_pnx_uin88_for_woocommerce_template_token');

