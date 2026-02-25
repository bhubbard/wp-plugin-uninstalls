#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete '2kb-performance-cron'

