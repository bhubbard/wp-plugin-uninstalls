#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-options'"

# Delete Transients
wp transient delete 'wp_gst_updated'
wp transient delete 'wp_gst_activated'

