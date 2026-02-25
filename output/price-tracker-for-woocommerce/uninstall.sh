#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pricetrfo_display_on_product_page'
wp option delete 'pricetrfo_ph_line_color'
wp option delete 'pricetrfo_ph_pointer_color'
wp option delete 'pricetrfo_ph_label'
wp option delete 'pricetrfo_button_text'

