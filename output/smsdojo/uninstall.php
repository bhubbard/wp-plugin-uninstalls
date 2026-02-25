<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smsdojo_enable_order_creation_trigger');
delete_site_option('smsdojo_enable_order_creation_trigger');
delete_option('smsdojo_enable_order_update_trigger');
delete_site_option('smsdojo_enable_order_update_trigger');
delete_option('smsdojo_enable_order_cancellation_trigger');
delete_site_option('smsdojo_enable_order_cancellation_trigger');
delete_option('smsdojo_sim_id');
delete_site_option('smsdojo_sim_id');
delete_option('smsdojo_api_key');
delete_site_option('smsdojo_api_key');
delete_option('smsdojo_sms_template_order_creation');
delete_site_option('smsdojo_sms_template_order_creation');
delete_option('smsdojo_sms_template_order_update');
delete_site_option('smsdojo_sms_template_order_update');
delete_option('smsdojo_sms_template_order_cancellation');
delete_site_option('smsdojo_sms_template_order_cancellation');

