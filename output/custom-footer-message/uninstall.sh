#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cfmsg_footer_message'
wp option delete 'cfmsg_message_enabled'
wp option delete 'cfmsg_text_color'
wp option delete 'cfmsg_bg_color'
wp option delete 'cfmsg_font_family'
wp option delete 'cfmsg_font_size'
wp option delete 'cfmsg_text_align'

