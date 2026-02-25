#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ps_lock_bp'
wp option delete 'ps_exclude_levels'
wp option delete 'ps_exclude_roles'
wp option delete 'ps_restrict_member'
wp option delete 'ps_lock_bb'

