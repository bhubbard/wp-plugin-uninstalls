#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'PinyinPermalink_separator'
wp option delete 'PinyinPermalink_fullword'
wp option delete 'PinyinPermalink_length'

