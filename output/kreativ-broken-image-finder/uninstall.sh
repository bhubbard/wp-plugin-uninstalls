#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kbif_last_scan_results'
wp option delete 'kbif_last_scan_stats'
wp option delete 'kbif_scan_queue'
wp option delete 'kbif_scan_progress'

