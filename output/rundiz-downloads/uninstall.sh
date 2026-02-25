#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'rd_downloads_updated'

# Clear Cron Jobs
wp cron event delete 'rddownloads_cron_purgelogs'

