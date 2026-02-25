#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'oow_dismissed_notice_elementor'
wp option delete 'oow_dismissed_notice_divi'
wp option delete 'oow_dismissed_notice_wpbakery'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'oow_dismissed_notice_%'"
wp option delete 'oowcode_admin_theme'

