#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wrvpp_enable_popup'
wp option delete 'wrvpp_display_on'
wp option delete 'wrvpp_limit_products'
wp option delete 'wrvpp_modal_title'
wp option delete 'wrvpp_max_products'
wp option delete 'wrvpp_popup_position'
wp option delete 'wrvpp_popup_link_text'

