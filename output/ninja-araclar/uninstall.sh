#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'puantablosu_cron'
wp cron event delete 'burclar_cron'
wp cron event delete 'doviz_cron'

