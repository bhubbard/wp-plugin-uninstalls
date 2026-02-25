#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'clonepress_roles'
wp option delete 'clonepress_types_enabled'
wp option delete 'clonepress_show_in_row_actions'
wp option delete 'clonepress_duplicate_label'
wp option delete 'clonepress_duplicate_post_status'
wp option delete 'clonepress_duplicate_suffix'
wp option delete 'clonepress_duplicate_redirect'
wp option delete 'clonepress_show_in_admin_bar'
wp option delete 'clonepress_show_in_bulk_actions'
wp option delete 'clonepress_show_in_metabox'
wp option delete 'clonepress_settings'

# Delete Transients
wp transient delete 'clonepress_reset_notice'

