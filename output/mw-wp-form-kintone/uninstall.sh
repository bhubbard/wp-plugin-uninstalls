#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'mwfk-updates'
wp transient delete 'mwfk-errors'

