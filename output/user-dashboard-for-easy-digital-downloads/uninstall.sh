#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ud_for_edd_general_options'
wp option delete 'ud_for_edd_redirection_options'
wp option delete 'ud_for_edd_access_control_options'
wp option delete 'ud_for_edd_email_options'
wp option delete 'ud_for_edd_reset_options'
wp option delete 'ud_for_edd_general_option'
wp option delete 'ud_for_edd_redirection_option'
wp option delete 'ud_for_edd_options'
wp option delete 'ud_for_edd_flush_rewrite_rules'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
