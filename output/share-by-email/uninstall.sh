#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sbe_settings_general_options'
wp option delete 'sbe_settings_email_options'
wp option delete 'tpul_settings_term_modal_options'
wp option delete 'uptime_ghost_options'

