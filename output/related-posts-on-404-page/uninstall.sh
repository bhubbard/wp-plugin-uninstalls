#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rpp_hide_admin_notice'
wp option delete 'rpp_display_notice_time'
wp option delete 'rpp_activation_time'
wp option delete 'rpp_post_types'

