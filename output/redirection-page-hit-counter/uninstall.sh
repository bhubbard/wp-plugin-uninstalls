#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wptech_redirection_option_show_all'
wp option delete 'wptech_redirection_option_on_off'
wp option delete 'wptech_hit_counter_option_on_off'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wptech_page_redirection_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wptech_page_redirection_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wptech_page_redirection_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wptech_page_redirection_url'"
