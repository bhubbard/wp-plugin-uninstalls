#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'queue_posts_time_from'
wp option delete 'queue_posts_time_to'
wp option delete 'queue_posts_minimum_interval'
wp option delete 'queue_posts_minimum_interval_type'
wp option delete 'queue_posts_last_queued'

