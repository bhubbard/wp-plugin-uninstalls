#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'insert_postcode'
wp transient delete 'update_postcode'
wp transient delete 'delete_postcode'

