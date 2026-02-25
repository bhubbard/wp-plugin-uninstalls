#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'safe_svg_upload_roles'
wp option delete 'safe_svg_large_svg'

