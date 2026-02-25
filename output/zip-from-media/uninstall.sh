#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'zipfrommedia_check_zip_generate'
wp cron event delete 'zipfrommedia_compress_hook'

