#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'freeze_key'
wp transient delete 'freeze_update_available'

