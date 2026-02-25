#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'medshi_geo_block_dashboard_stats'
wp transient delete 'medshi_geo_block_logs_summary'
wp transient delete 'medshi_geo_export_all_logs'

