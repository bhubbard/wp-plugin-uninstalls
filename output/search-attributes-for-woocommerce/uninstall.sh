#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wsatt_status'
wp option delete 'wsatt_attributes'

# Delete Transients
wp transient delete 'wc_attribute_taxonomies'

