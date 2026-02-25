#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpsh_enable'
wp option delete 'wpsh_bg_color'
wp option delete 'wpsh_text_color'
wp option delete 'wpsh_close_icon_color'
wp option delete 'wpsh_closable'
wp option delete 'wpsh_position'
wp option delete 'wpsh_content'
wp option delete 'wpsh_where'
wp option delete 'wpsh_auto_close'
wp option delete 'wpsh_page_ids'

