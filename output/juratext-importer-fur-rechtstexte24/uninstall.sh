#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'jura_tifr_cron_event'
wp cron event delete 'rechtstexte_hourly_event'

