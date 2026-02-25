#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'social_comments'

# Delete Transients
wp transient delete 'bainternetNews'

