#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rezerwujestolik_places_array'
wp option delete 'rezerwujestolik_api_token'
wp option delete 'rezerwujestolik_button_bg_color'
wp option delete 'rezerwujestolik_button_text_color'
wp option delete 'rezerwujestolik_button_border_color'
wp option delete 'rezerwujestolik_button_text'
wp option delete 'rezerwujestolik_lang'
wp option delete 'rezerwujestolik_place_id'
wp option delete 'rezerwujestolik_accent_color'
wp option delete 'rezerwujestolik_log'
wp option delete 'rezerwujestolik_url'

