#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nikan_faqp_textarea_type'
wp option delete 'faqp_template_type'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nikan_faqp_question'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nikan_faqp_question'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nikan_faqp_question'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nikan_faqp_question'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nikan_faqp_answer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nikan_faqp_answer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nikan_faqp_answer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nikan_faqp_answer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'faqp_display_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'faqp_display_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'faqp_display_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'faqp_display_type'"
