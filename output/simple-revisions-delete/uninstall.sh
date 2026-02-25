#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'wpsrd_settings_errors'
wp transient delete 'wpsrd_norev'

