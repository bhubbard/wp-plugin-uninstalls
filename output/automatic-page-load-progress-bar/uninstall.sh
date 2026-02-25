#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aplpb_option_checkbox_page'
wp option delete 'aplpb_option_checkbox_post'
wp option delete 'aplpb_option_checkbox_custom'
wp option delete 'aplpb_option_theme'
wp option delete 'aplpb_option_color'
wp option delete 'aplpb_option_query_desktop'
wp option delete 'aplpb_option_query_tablet'
wp option delete 'aplpb_option_query_mobile'

