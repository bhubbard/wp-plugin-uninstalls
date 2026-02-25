#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'expanding_archives_months'
wp transient delete 'expanding_archives_current_month_posts'

