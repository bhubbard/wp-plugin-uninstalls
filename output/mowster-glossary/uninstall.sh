#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mowsterG_shortcode'
wp option delete 'mowsterG_pagination_word'
wp option delete 'mowster_Glossary_Terms_Per_Page'
wp option delete 'mowsterG_terms_per_page'
wp option delete 'mowsterG_html_before_term'
wp option delete 'mowsterG_html_after_term'
wp option delete 'mowsterG_html_before_description'
wp option delete 'mowsterG_html_after_description'
wp option delete 'mowsterG_text_previous_page'
wp option delete 'mowsterG_text_next_page'
wp option delete 'mowsterG_end_size'
wp option delete 'mowsterG_mid_size'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mowsterG_user_access'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mowsterG_user_access'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mowsterG_user_access'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mowsterG_user_access'"
