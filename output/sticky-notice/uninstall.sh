#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'trs_sticky_notice_text'
wp option delete 'trs_sticky_notice_theme'
wp option delete 'trs_sticky_notice_position'
wp option delete 'trs_sticky_notice_font_size'

