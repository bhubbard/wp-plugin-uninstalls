#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mailersend_config_mode'

# Delete Transients
wp transient delete 'mailersend_error'

