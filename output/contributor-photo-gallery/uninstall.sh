#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cpglry_options'
wp option delete 'cpglry_setup_notice_dismissed'
wp option delete 'cpglry_shortcode_notice_dismissed'
wp option delete 'cpglry_new_shortcode_notice_shown'

