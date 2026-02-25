#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'static_maps_editor_uid'
wp option delete 'static_maps_editor_privacy_policy_accepted'
wp option delete 'static_maps_editor_tos_accepted'
wp option delete 'static_maps_editor_menu'
wp option delete 'static_maps_editor_size_width'
wp option delete 'static_maps_editor_size_height'
wp option delete 'static_maps_editor_activated_static_maps_editor'
wp option delete 'static_maps_editor_uid_fetch_error'
wp option delete 'static_maps_editor_uid_fetch_error_messages'

