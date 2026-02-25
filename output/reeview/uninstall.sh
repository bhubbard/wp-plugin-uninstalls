#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'cron_reeview_create'
wp cron event delete 'cron_reeview_update'
wp cron event delete 'cron_reeview_delete'

