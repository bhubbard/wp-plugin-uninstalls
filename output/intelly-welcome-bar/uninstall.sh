#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'iwb_session_garbage_collection'

