#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'block_icons_redirect_after_activation_option'
wp option delete 'block_icons_active_notices_option'

