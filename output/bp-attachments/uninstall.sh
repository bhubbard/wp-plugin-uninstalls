#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_bp_attachments_allowed_media_types'
wp option delete '_bp_attachments_can_upload_privately'
wp option delete 'rewrite_rules'
wp option delete 'active_sitewide_plugins'

