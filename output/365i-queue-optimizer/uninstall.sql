-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('queue_optimizer_time_limit', 'queue_optimizer_concurrent_batches', 'queue_optimizer_batch_size', 'queue_optimizer_retention_days', 'queue_optimizer_image_engine', 'queue_optimizer_server_type_override', 'queue_optimizer_activated', 'queue_optimizer_logging_enabled', 'queue_optimizer_log_retention_days', 'queue_optimizer_last_run', 'queue_optimizer_debug_mode', 'queue_optimizer_enable_concurrency_filter', '365i_qo_image_engine');

