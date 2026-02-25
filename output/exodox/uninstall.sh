#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'exodox_publisher_id'
wp option delete 'exodox_publisher_api_key'
wp option delete 'exodox_show_lock_info'
wp option delete 'exodox_show_create_account'
wp option delete 'exodox_show_report_abuse_link'
wp option delete 'exodox_dark_mode'
wp option delete 'exodox_popup_alignment'
wp option delete 'exodox_show_excerpt'
wp option delete 'exodox_disable_listing'
wp option delete 'exodox_lock_pages'
wp option delete 'exodox_lock_archives'
wp option delete 'exodox_redirect_pages'
wp option delete 'exodox_replace_wp_header'
wp option delete 'exodox_replace_wp_footer'

