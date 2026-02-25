#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'ry-notice'
wp transient delete 'doing_cron'
wp transient delete 'ry_analyzed_table'
wp transient delete 'ry_optimized_table'
wp transient delete 'ry_export_data'

