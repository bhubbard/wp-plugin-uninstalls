#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sf_auc_first_message'
wp option delete 'author_base'

# Delete Transients
wp transient delete 'settings_errors'

