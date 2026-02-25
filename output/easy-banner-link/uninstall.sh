#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'inx-banner-updates'
wp transient delete 'inx-banner-errors'

