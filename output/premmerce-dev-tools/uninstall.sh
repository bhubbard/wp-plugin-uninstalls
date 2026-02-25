#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_children'"

# Delete Transients
wp transient delete 'wc_attribute_taxonomies'

