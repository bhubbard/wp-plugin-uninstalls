#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hotfix_version'

# Delete Transients
wp transient delete 'update_themes'

