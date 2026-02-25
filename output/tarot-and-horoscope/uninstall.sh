#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tarotxhoroscope_chatbox_settings'
wp option delete 'tarotxhoroscope_daily_tarot_settings'
wp option delete 'tarotxhoroscope_aries_attachment_id'
wp option delete 'tarotxhoroscope_horoscope_settings'
wp option delete 'tarotxhoroscope_one_card_settings'
wp option delete 'tarotxhoroscope_three_card_settings'
wp option delete 'tarotxhoroscope_api_key'
wp option delete 'tarotxhoroscope_domain'
wp option delete 'tarotxhoroscope_remove_data_on_uninstall'

# Delete Transients
wp transient delete 'tarotxhoroscope_redirect_to_settings'

