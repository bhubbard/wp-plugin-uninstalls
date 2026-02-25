#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gastrosite_reservation_id'
wp option delete 'gastrosite_reservation_language'
wp option delete 'gastrosite_reservation_show_header'
wp option delete 'gastrosite_reservation_color'
wp option delete 'gastrosite_reservation_button_text'
wp option delete 'gastrosite_reservation_button_size'
wp option delete 'gastrosite_reservation_button_color'
wp option delete 'gastrosite_reservation_z_index'
wp option delete 'gastrosite_reservation_button_position'

