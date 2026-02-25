#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'clwpuu_disable_comments'
wp option delete 'clwpuu_google_analytics'
wp option delete 'clwpuu_classic_widgets'
wp option delete 'clwpuu_classic_editor'
wp option delete 'clwpuu_maintenance_mode'
wp option delete 'clwpuu_disable_xmlrpc'
wp option delete 'clwpuu_regenerate_thumbnails'
wp option delete 'clwpuu_duplicate_page'
wp option delete 'clwpuu_maintenance_mode '

