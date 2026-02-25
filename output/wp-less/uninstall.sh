#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'wp-less-garbage-collection'
wp cron event delete 'wp-less_garbage_collection'

