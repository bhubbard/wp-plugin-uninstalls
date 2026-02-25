#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vicomi_feelbacks_api_key'
wp option delete 'vicomi_activation_redirect'
wp option delete 'vicomi_feelbacks_uuid'
wp option delete 'vicomi_feelbacks_replace'
wp option delete 'vicomi_feelbacks_active'
wp option delete 'vicomi_checkboxes'
wp option delete 'vicomi_exclude_pages_id'

