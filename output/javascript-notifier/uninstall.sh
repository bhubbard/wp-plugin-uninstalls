#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'javascript_notifier_settings'
wp option delete 'javascript_notifier_message'
wp option delete 'javascript_notifier_block'
wp option delete 'javascript_notifier_fg_color'
wp option delete 'javascript_notifier_bg_color'
wp option delete 'javascript_notifier_font_size'
wp option delete 'javascript_notifier_opacity'
wp option delete 'javascript_notifier_custom_css'

