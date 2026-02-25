#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sh_widget_id'
wp option delete 'sh_template'
wp option delete 'sh_side'
wp option delete 'sh_position'
wp option delete 'sh_title'
wp option delete 'sh_title_offline'
wp option delete 'sh_inviteTimeout'
wp option delete 'sh_inviteCancelTimeout'
wp option delete 'sh_inviteText'
wp option delete 'sh_inviteImage'
wp option delete 'sh_text_layout'
wp option delete 'sh_devisions'
wp option delete 'sh_track'
wp option delete 'sh_hide'
wp option delete 'sh_hide_offline'
wp option delete 'sh_offline_pay'
wp option delete 'sh_secret_key'

