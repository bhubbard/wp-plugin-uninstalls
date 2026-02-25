#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'unclickable_options_hook'
wp option delete 'unclickable_options_select'
wp option delete 'unclickable_options_thumbnail'
wp option delete 'unclickable_options_selector'
wp option delete 'unclickable_options_all'
wp option delete 'unclickable_options_link'
wp option delete 'unclickable_options_img'
wp option delete 'unclickable_options_background'

