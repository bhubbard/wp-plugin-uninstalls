#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'queue_optimizer_time_limit'
wp option delete 'queue_optimizer_concurrent_batches'
wp option delete 'queue_optimizer_batch_size'
wp option delete 'queue_optimizer_retention_days'
wp option delete 'queue_optimizer_image_engine'
wp option delete 'queue_optimizer_server_type_override'
wp option delete 'queue_optimizer_activated'
wp option delete 'queue_optimizer_logging_enabled'
wp option delete 'queue_optimizer_log_retention_days'
wp option delete 'queue_optimizer_last_run'
wp option delete 'queue_optimizer_debug_mode'
wp option delete 'queue_optimizer_enable_concurrency_filter'
wp option delete '365i_qo_image_engine'

