#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'seacp-admin-notice'
wp transient delete 'seacp-version-admin-notice'

