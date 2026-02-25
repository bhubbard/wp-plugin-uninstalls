#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'pico_publisher_id'
wp transient delete 'pico_api_key '
wp transient delete 'pico_api_key'
wp transient delete 'pico_widget_version'
wp transient delete 'pico_gadget_version'

