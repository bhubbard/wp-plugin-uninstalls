#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tsm_current_columns_to_show'
wp option delete 'tsm_quantity_per_batch'
wp option delete 'tsm_crawl_type'
wp option delete 'tsm_db_version'
wp option delete 'tsm_time_between_batches'
wp option delete 'tsm_autoreload_datatables'

