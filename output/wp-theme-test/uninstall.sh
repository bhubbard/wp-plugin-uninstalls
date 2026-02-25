#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'wptt-updates'
wp transient delete 'wptt-errors'

