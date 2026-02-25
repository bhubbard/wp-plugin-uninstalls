#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'enjaneb_widget_epi'
wp option delete 'enjaneb_widget_lng'
wp option delete 'enjaneb_widget_org'

# Delete Transients
wp transient delete 'error_enjaneb'

