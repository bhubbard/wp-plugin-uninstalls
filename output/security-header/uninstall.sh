#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'inspiredmonks_security_header_options'
wp option delete 'inspiredmonks_security_header_version'

# Delete Transients
wp transient delete 'inspiredmonks_header_validation_errors'

