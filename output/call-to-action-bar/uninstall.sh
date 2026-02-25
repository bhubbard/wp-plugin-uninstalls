#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ctab_active'
wp option delete 'ctab_able_to_dismiss'
wp option delete 'ctab_general_text'
wp option delete 'ctab_call_to_action_text'
wp option delete 'ctab_call_to_action_url'
wp option delete 'ctab_bar_background_color'
wp option delete 'ctab_bar_text_color'
wp option delete 'ctab_call_to_action_background_color'
wp option delete 'ctab_call_to_action_text_color'

