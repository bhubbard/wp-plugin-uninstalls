#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'script'
wp option delete 'show_only_posts'
wp option delete 'user_id'
wp option delete 'inline_script'

# Delete Transients
wp transient delete 'websitevoice_admin_notice'

