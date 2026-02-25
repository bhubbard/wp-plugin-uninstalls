#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'siuf_widgetID'
wp option delete 'user_nicename'
wp option delete 'siuf_tab_text'
wp option delete 'siuf_tab_color'
wp option delete 'siuf_tab_type'
wp option delete 'siuf_time_on_page'
wp option delete 'siuf_header_text'
wp option delete 'siuf_intro_text'
wp option delete 'siuf_rating_text'
wp option delete 'siuf_feedback_text'

