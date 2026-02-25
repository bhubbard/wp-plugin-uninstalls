#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sntc_banner_enabled'
wp option delete 'sntc_banner_style'
wp option delete 'sntc_banner_message'
wp option delete 'sntc_bg_color'
wp option delete 'sntc_text_color'
wp option delete 'sntc_link_color'
wp option delete 'sntc_accept_bg'
wp option delete 'sntc_accept_text'
wp option delete 'sntc_decline_bg'
wp option delete 'sntc_decline_text'
wp option delete 'sntc_privacy_url'
wp option delete 'sntc_install_time'
wp option delete 'sntc_review_dismissed'
wp option delete 'sntc_review_temp_dismiss'

