#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kul_maintenance_options'
wp option delete 'kul_maintenance_slider_status'
wp option delete 'kul_maintenance_status'

