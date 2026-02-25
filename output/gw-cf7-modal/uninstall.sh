#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'media_selector_attachment_id'
wp option delete 'select_form'
wp option delete 'left_textarea'
wp option delete 'form_background'
wp option delete 'main_background_color'
wp option delete 'leftarea_content_position'
wp option delete 'label_color'
wp option delete 'leftarea_text_color'
wp option delete 'leftarea_text_align'
wp option delete 'text_background'
wp option delete 'close_button_color'
wp option delete 'onload_or_click'
wp option delete 'click_selector'

