#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'workspace_id'
wp option delete 'widget_id'
wp option delete 'public_key'
wp option delete 'track_user'

