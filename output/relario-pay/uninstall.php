<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('relario_api_key');
delete_site_option('relario_api_key');
delete_option('relario_debug_mode');
delete_site_option('relario_debug_mode');
delete_option('relario_product_id');
delete_site_option('relario_product_id');
delete_option('relario_product_name');
delete_site_option('relario_product_name');
delete_option('relario_sms_text_prefix');
delete_site_option('relario_sms_text_prefix');

// Delete Transients
delete_transient('relario_activation_notice');
delete_site_transient('relario_activation_notice');

