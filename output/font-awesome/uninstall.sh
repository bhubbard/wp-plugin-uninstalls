#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'font-awesome-releases'
wp transient delete 'font-awesome-last-used-release'

