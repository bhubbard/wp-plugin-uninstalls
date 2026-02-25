#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'provesrc_api_error'
wp transient delete 'provesrc_success_message'

