#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eth_fundraiser_version'
wp option delete 'eth_fundraiser_address'
wp option delete 'eth_fundraiser_banner_background'
wp option delete 'eth_fundraiser_title'
wp option delete 'eth_fundraiser_title_color'
wp option delete 'eth_fundraiser_svg_circle'
wp option delete 'eth_fundraiser_svg_eth_icon'
wp option delete 'eth_fundraiser_button_background'
wp option delete 'eth_fundraiser_close_btn_color'
wp option delete 'eth_fundraiser_eth_price_color'
wp option delete 'eth_fundraiser_banner'
wp option delete 'eth_fundraiser_button_text'

