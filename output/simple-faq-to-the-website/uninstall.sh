#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mxffi_flush_rewrite_rules'
wp option delete '_mx_test_email'
wp option delete '_mx_simple_faq_enable_ssr'
wp option delete '_mx_simple_faq_admin_email'
wp option delete '_mx_simple_faq_agree_link'
wp option delete '_mx_simple_faq_recaptcha_site_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mxffi_user_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mxffi_user_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mxffi_user_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mxffi_user_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mxffi_user_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mxffi_user_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mxffi_user_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mxffi_user_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mxffi_faq_response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mxffi_faq_response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mxffi_faq_response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mxffi_faq_response'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mxffi_faq_response_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mxffi_faq_response_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mxffi_faq_response_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mxffi_faq_response_sent'"
