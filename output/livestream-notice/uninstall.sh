#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-channelname'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-twitchclientid'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-noticemessage'"
wp option delete 'livestream-channelname'
wp option delete 'livestream-noticemessage'
wp option delete 'livestream-twitchclientid'

