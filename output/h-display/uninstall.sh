#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'h_message'
wp option delete 'txt_align'
wp option delete 'color'
wp option delete 'bg_color'
wp option delete 'font_size'
wp option delete 'padding'

