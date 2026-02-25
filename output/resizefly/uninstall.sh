#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'resizefly_version'
wp option delete 'resizefly_version_initial'
wp option delete 'resizefly_user_sizes'
wp option delete 'resizefly_restrict_sizes'
wp option delete 'resizefly_sizes'
wp option delete 'resizefly_resized_path'
wp option delete 'resizefly_options'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'rzf_notice_shown'

