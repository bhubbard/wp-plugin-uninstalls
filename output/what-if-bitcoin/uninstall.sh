#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'whatif_currency'
wp option delete 'whatif_bg_color'
wp option delete 'whatif_text_color'
wp option delete 'whatif_input_bg_color'
wp option delete 'whatif_input_text_color'
wp option delete 'whatif_input_border_color'
wp option delete 'whatif_button_bg_color'
wp option delete 'whatif_button_text_color'
wp option delete 'whatif_input_border_radius'
wp option delete 'whatif_border_radius'
wp option delete 'whatif_result_border_color'
wp option delete 'whatif_result_text_color'
wp option delete 'whatif_made_love'
wp option delete 'whatif_tech'

