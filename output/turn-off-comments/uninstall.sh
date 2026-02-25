#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'turn_off_comments_installed'

# Delete Transients
wp transient delete 'turn-off-comments-notification'

