<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('queue_optimizer_time_limit');
delete_site_option('queue_optimizer_time_limit');
delete_option('queue_optimizer_concurrent_batches');
delete_site_option('queue_optimizer_concurrent_batches');
delete_option('queue_optimizer_batch_size');
delete_site_option('queue_optimizer_batch_size');
delete_option('queue_optimizer_retention_days');
delete_site_option('queue_optimizer_retention_days');
delete_option('queue_optimizer_image_engine');
delete_site_option('queue_optimizer_image_engine');
delete_option('queue_optimizer_server_type_override');
delete_site_option('queue_optimizer_server_type_override');
delete_option('queue_optimizer_activated');
delete_site_option('queue_optimizer_activated');
delete_option('queue_optimizer_logging_enabled');
delete_site_option('queue_optimizer_logging_enabled');
delete_option('queue_optimizer_log_retention_days');
delete_site_option('queue_optimizer_log_retention_days');
delete_option('queue_optimizer_last_run');
delete_site_option('queue_optimizer_last_run');
delete_option('queue_optimizer_debug_mode');
delete_site_option('queue_optimizer_debug_mode');
delete_option('queue_optimizer_enable_concurrency_filter');
delete_site_option('queue_optimizer_enable_concurrency_filter');
delete_option('365i_qo_image_engine');
delete_site_option('365i_qo_image_engine');

