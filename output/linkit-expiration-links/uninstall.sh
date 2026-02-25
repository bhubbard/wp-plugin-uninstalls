#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'linkit_icon_link'
wp option delete 'linkit_label_link'
wp option delete 'linkit_icon_clicks'
wp option delete 'linkit_label_clicks'
wp option delete 'linkit_icon_expires'
wp option delete 'linkit_label_expires'
wp option delete 'linkit_icon_status'
wp option delete 'linkit_label_status'
wp option delete 'linkit_color_active_bg'
wp option delete 'linkit_color_active_text'
wp option delete 'linkit_color_expired_bg'
wp option delete 'linkit_color_expired_text'
wp option delete 'linkit_color_maxclicks_bg'
wp option delete 'linkit_color_maxclicks_text'
wp option delete 'linkitex_expired_message'
wp option delete 'linkit_cleanup_on_uninstall'
wp option delete 'linkit_expired_message'
wp option delete 'linkitex_cleanup_on_uninstall'

