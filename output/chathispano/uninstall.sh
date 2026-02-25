#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'chathispano_webchat_nick'
wp option delete 'chathispano_webchat_realname'
wp option delete 'chathispano_webchat_chan'
wp option delete 'chathispano_webchat_autojoin'
wp option delete 'chathispano_webchat_theme'
wp option delete 'chathispano_webchat_layout'
wp option delete 'chathispano_webchat_height'
wp option delete 'chathispano_webchat_width'

