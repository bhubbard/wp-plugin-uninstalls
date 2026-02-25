#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'swipego_access_token'
wp transient delete 'swipego_integration'

