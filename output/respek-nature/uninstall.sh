#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'respek_auth_token'
wp option delete 'respek_api_url'
wp option delete 'respek_button_template'
wp option delete 'respek_gif_feature'
wp option delete 'respek_compensation_count'
wp option delete 'respek_impact'
wp option delete 'respek_popup_template'
wp option delete 'respek_timestamp_popup'
wp option delete 'respek_popup_placement'
wp option delete 'respek_is_active'
wp option delete 'respek_checkout_placement'
wp option delete 'respek_collections'
wp option delete 'respek_matching_collections'
wp option delete 'respek_on_us_collections'
wp option delete 'respek_show_popup'
wp option delete 'respek_popup_title'
wp option delete 'respek_popup_message'
wp option delete 'woocommerce_currency'
wp option delete 'extra_post_info'

