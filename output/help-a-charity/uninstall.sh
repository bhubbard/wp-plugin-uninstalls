#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'helpc_enable'
wp option delete 'helpc_bar_position'
wp option delete 'helpc_close_color'
wp option delete 'helpc_donation_amount'
wp option delete 'helpc_donated_amount'
wp option delete 'helpc_donation_target'
wp option delete 'helpc_progress_bg'
wp option delete 'helpc_progress'
wp option delete 'helpc_bar_bg_color'
wp option delete 'helpc_bar_color'
wp option delete 'helpc_bar_text'
wp option delete 'helpc_charity_logo'

