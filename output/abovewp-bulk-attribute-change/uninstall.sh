#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'abovewp_bulk_attribute_change_options'
wp option delete 'abovewp_bulk_attribute_change_progress'

# Delete Transients
wp transient delete 'abovewp_bulk_attribute_change_all_products'

