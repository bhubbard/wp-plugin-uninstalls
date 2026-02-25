#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'scf7e_entry_deleted'
wp transient delete 'scf7e_admin_success'
wp transient delete 'scf7e_admin_failed'

