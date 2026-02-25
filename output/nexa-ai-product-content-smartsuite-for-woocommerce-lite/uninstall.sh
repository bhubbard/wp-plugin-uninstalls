#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nexaapc_settings'
wp option delete 'nexaapc_activation_time'
wp option delete 'nexaapc_review_notice_hide'
wp option delete 'nexaapc_next_show_time'

# Delete Transients
wp transient delete 'nexaapc_product_content_smartsuite_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nexaapc_product_faqs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nexaapc_product_faqs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nexaapc_product_faqs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nexaapc_product_faqs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_nexaapc_ai_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_nexaapc_ai_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_nexaapc_ai_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_nexaapc_ai_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nexaapc_ai_tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nexaapc_ai_tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nexaapc_ai_tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nexaapc_ai_tags'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nexaapc_ai_faqs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nexaapc_ai_faqs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nexaapc_ai_faqs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nexaapc_ai_faqs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nexaapc_ai_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nexaapc_ai_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nexaapc_ai_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nexaapc_ai_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nexaapc_ai_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nexaapc_ai_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nexaapc_ai_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nexaapc_ai_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nexaapc_ai_shortdesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nexaapc_ai_shortdesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nexaapc_ai_shortdesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nexaapc_ai_shortdesc'"
