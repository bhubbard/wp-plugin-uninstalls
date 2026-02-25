#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'cpg_cryptanil_cronCheckOrder'

