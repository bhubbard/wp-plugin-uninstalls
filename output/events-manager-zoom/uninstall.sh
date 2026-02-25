#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dbem_zoom_version'
wp option delete 'dbem_location_types'
wp option delete 'dbem_edit_events_page'
wp option delete 'emp_gateway_customer_fields'
wp option delete 'em_check_dev_version'
wp option delete 'dbem_pro_dev_updates'

