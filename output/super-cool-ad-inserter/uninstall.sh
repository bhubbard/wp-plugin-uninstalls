#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'scaip_settings_start'
wp option delete 'scaip_settings_period'
wp option delete 'scaip_settings_repetitions'
wp option delete 'scaip_settings_min_paragraphs'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'scaip_prevent_shortcode_addition'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'scaip_prevent_shortcode_addition'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'scaip_prevent_shortcode_addition'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'scaip_prevent_shortcode_addition'"
