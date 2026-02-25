#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'mw-wp-form-line-notify-errors'
wp transient delete 'mw-wp-form-line-notify-updated'

