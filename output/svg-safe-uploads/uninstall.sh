#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'svg_support_enabled'
wp option delete 'svg_support_restrict_admins'

