#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'migratestore_import_success'
wp transient delete 'migratestore_import_error'

