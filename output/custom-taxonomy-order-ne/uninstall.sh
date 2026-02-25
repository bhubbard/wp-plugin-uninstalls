#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'customtaxorder_settings'
wp option delete 'customtaxorder_taxonomies'

# Delete Transients
wp transient delete 'customtaxorder_get_settings'

