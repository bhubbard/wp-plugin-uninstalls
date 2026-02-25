#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vdd_language'
wp option delete 'vdd_select_version'
wp option delete 'vdd_show_priority_version'
wp option delete 'vdd_link_verse'
wp option delete 'vdd_show_image_if_available'

