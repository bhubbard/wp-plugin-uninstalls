#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aquilaLogoSettings'
wp option delete 'aquilaColourSettings'
wp option delete 'aquila_settings'
wp option delete 'media_selector_attachment_id'
wp option delete 'aquilaAdminbarSettings'

