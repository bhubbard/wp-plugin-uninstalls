#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'schsmst_batch_processing'
wp option delete 'schsmst_batch_offset'
wp option delete 'schsmst_batch_total'
wp option delete 'schsmst_batch_post_type'
wp option delete 'schsmst_enable_collapsible'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_schsmst_faq_schema'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_schsmst_faq_schema'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_schsmst_faq_schema'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_schsmst_faq_schema'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_schsmst_last_check'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_schsmst_last_check'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_schsmst_last_check'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_schsmst_last_check'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_schsmst_qa_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_schsmst_qa_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_schsmst_qa_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_schsmst_qa_count'"
