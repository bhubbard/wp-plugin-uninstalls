#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dscap_player_compact'
wp option delete 'dscap_player_show_volume'
wp option delete 'dscap_player_show_download'
wp option delete 'dscap_player_align'
wp option delete 'dscap_player_color'
wp option delete 'dscap_player_bg'
wp option delete 'dscap_player_icon_color'
wp option delete 'dscap_player_width'
wp option delete 'dscap_player_show_meta'

