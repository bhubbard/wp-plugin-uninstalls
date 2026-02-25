#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'urbipb_enable_disclaimer'
wp option delete 'urbipb_disclaimer_html'
wp option delete 'urbipb_disclaimer_fixed'
wp option delete 'urbipb_disclaimer_background'
wp option delete 'urbipb_disclaimer_icon'
wp option delete 'urbipb_disclaimer_start_date'
wp option delete 'urbipb_disclaimer_start_time'
wp option delete 'urbipb_disclaimer_end_date'
wp option delete 'urbipb_disclaimer_end_time'
wp option delete 'urbipb_exclude_pages'
wp option delete 'urbipb_cookie_expire'
wp option delete 'urbipb_enable_localhost'
wp option delete 'urbipb_cookie_set_value'
wp option delete 'urbipb_announce_delay'

