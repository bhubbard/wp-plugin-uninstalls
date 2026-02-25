#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'web_irc_ws_url'
wp option delete 'web_irc_channel'
wp option delete 'web_irc_nickname_prefix'
wp option delete 'web_irc_realname'
wp option delete 'web_irc_theme'
wp option delete 'web_irc_autoconnect'

# Delete Transients
wp transient delete 'web_irc_client_cache'

