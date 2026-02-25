#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_ba_eas_author_base'
wp option delete '_ba_eas_remove_front'
wp option delete '_ba_eas_do_role_based'
wp option delete '_ba_eas_role_slugs'
wp option delete '_ba_eas_do_auto_update'
wp option delete '_ba_eas_default_user_nicename'
wp option delete '_ba_eas_bulk_update'
wp option delete '_ba_eas_bulk_update_structure'
wp option delete '_ba_eas_db_version'
wp option delete '_ba_eas_old_options'
wp option delete 'ba_edit_author_slug'
wp option delete 'rewrite_rules'

