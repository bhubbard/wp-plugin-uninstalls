#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'wp_scheduled_missed_time'

