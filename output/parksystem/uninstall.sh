#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'parksystem_page_template'
wp option delete 'parksystem_parking_token'
wp option delete 'parksystem_body_bg_color'
wp option delete 'parksystem_text_color'
wp option delete 'parksystem_input_bg_color'
wp option delete 'parksystem_label_text_color'
wp option delete 'parksystem_card_bg_color'
wp option delete 'parksystem_input_hover_bg_color'

# Delete Transients
wp transient delete 'parksystem_block_template_content'
wp transient delete 'parksystem_block_template_path'
wp transient delete 'parksystem_iframe_content'

