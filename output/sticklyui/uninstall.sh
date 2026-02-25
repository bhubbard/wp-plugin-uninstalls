#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sticklyui_version'
wp option delete 'sticklyui_contact_settings'
wp option delete 'sticklyui_header_settings'

# Delete Transients
wp transient delete 'sticklyui_buttons_cache'

