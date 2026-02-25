#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tap_cookies_list'
wp option delete 'tap_cookies_information_box_title'
wp option delete 'tap_cookies_information_box_text'
wp option delete 'tap_cookies_information_box_position'

