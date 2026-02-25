#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'cs-framework-transient'
wp transient delete 'cs-metabox-transient'

