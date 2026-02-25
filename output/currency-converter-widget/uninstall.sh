#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cwc_widget_options'
wp option delete 'cwc_review_status'
wp option delete 'cwc_usage_count'
wp option delete 'cwc_activation_date'

