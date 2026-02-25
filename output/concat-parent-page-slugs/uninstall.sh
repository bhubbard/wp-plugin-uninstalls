#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'post-updated'
wp transient delete 'post-error'

