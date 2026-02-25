#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mailcamp_options_api'
wp option delete 'mailcamp_options_lists'
wp option delete 'mailcamp_options_form'
wp option delete 'mailcamp_options_shortcode'
wp option delete 'mailcamp_options_wc'
wp option delete 'mailcamp_options_wc_fields'
wp option delete 'mailcamp_options'
wp option delete 'mailcamp_options_listids'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_signup_checkbox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_signup_checkbox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_signup_checkbox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_signup_checkbox'"
