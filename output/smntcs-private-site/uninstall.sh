#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smntcs_ps_enable'
wp option delete 'smntcs_ps_background'
wp option delete 'smntcs_ps_message_color'
wp option delete 'smntcs_ps_message'
wp option delete 'smntcs_ps_login_button'

