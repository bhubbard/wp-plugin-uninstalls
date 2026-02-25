#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hdsb_stickybanner_version'
wp option delete 'hdsb_stickybanner_enabled'
wp option delete 'hdsb_stickybanner_text'
wp option delete 'hdsb_stickybanner_colour'
wp option delete 'hdsb_stickybanner_text_colour'
wp option delete 'hdsb_stickybanner_position'
wp option delete 'hdsb_stickybanner_btn_text'
wp option delete 'hdsb_stickybanner_btn_link'
wp option delete 'hdsb_stickybanner_cookie_expiry'
wp option delete 'hdsb_stickybanner_hide_on_pages'
wp option delete 'hdsb_stickybanner_hide_close_btn'

