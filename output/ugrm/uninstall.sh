#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'UGRM_admin_role'
wp option delete 'UGRM_editor_role'
wp option delete 'UGRM_author_role'
wp option delete 'UGRM_contributor_role'
wp option delete 'UGRM_subscriber_role'
wp option delete 'UGRM_return_target_to_HTTPS'

