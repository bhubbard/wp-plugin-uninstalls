#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kabook_editor_tools_settings'

# Delete Transients
wp transient delete 'kabook_activated_notice'

