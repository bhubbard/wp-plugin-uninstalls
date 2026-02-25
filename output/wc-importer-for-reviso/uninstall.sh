#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcifr-customers-role'
wp option delete 'wcifr-suppliers-role'
wp option delete 'wcifr-suppliers-groups'
wp option delete 'wcifr-agt'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-role'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-groups'"

# Delete Transients
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

