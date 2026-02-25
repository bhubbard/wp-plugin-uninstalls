#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'seokelo_last_external_check_time'
wp option delete 'seokelo_batch_offset'
wp option delete 'seokelo_batch_offset_check'
wp option delete 'seokelo_cache_timestamp'
wp option delete 'seokelo_posts_to_update'
wp option delete 'seokelo_widget_enabled'
wp option delete 'seokelo_total_posts_to_scan'
wp option delete 'seokelo_last_error'
wp option delete 'seokelo_last_external_check_count'
wp option delete 'seokelo_last_external_broken_count'

