#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_editarea_enable'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wp_editarea_%'"
wp option delete 'wp_editarea_start_highlight'
wp option delete 'wp_editarea_allow_toggle'
wp option delete 'wp_editarea_word_wrap'
wp option delete 'wp_editarea_language'
wp option delete 'wp_editarea_display'

