#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'celtic_lti_options'

# Delete Transients
wp transient delete 'settings_errors'

