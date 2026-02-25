#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ets_load_more_button'
wp option delete 'ets_product_q_qa_list_length'
wp option delete 'ets_load_more_button_name'
wp option delete 'ets_product_qa_paging_type'
wp option delete 'ets_qa_approve'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ets_question_answer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ets_question_answer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ets_question_answer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ets_question_answer'"
