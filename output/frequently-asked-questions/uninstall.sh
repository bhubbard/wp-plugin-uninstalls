#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'selectFAQTemlate'
wp option delete 'enabFAQIndexPage'
wp option delete 'enabFAQWooTab'
wp option delete 'faqTitleBackgroundColor'
wp option delete 'customfaqitemorder'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ffw_use_post_title_and_content_as_faq_via_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ffw_use_post_title_and_content_as_faq_via_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ffw_use_post_title_and_content_as_faq_via_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ffw_use_post_title_and_content_as_faq_via_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'no_index_to_this_faq_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'no_index_to_this_faq_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'no_index_to_this_faq_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'no_index_to_this_faq_page'"
