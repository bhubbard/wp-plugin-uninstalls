#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bbh_url'
wp option delete 'bbh_customer'
wp option delete 'bbh_adults_field'
wp option delete 'bbh_childrens_field'
wp option delete 'bbh_show_childrens_field'
wp option delete 'bbh_calendar_theme'
wp option delete 'bbh_button_border_color'
wp option delete 'bbh_button_background_color'
wp option delete 'bbh_button_text_color'

