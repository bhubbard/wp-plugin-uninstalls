#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wprd-revision-control'

# Delete Transients
wp transient delete 'wprd_norev'
wp transient delete 'wprd_settings_errors'

