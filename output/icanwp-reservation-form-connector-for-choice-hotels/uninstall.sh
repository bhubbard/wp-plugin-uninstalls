#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ch_reservation_input_choicehotels_url'
wp option delete 'ch_reservation_select_style_option'
wp option delete 'ch_reservation_shortcode_text_widget'
wp option delete 'ch_reservation_check_disable_auto_checkout_select'
wp option delete 'ch_reservation_check_load_jquery'
wp option delete 'ch_reservation_check_load_jquery_datepicker'
wp option delete 'ch_reservation_check_load_jquery_spinner'

