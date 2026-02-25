-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mxffi_flush_rewrite_rules', '_mx_test_email', '_mx_simple_faq_enable_ssr', '_mx_simple_faq_admin_email', '_mx_simple_faq_agree_link', '_mx_simple_faq_recaptcha_site_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mxffi_user_name', '_mxffi_user_email', '_mxffi_faq_response', '_mxffi_faq_response_sent');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mxffi_user_name', '_mxffi_user_email', '_mxffi_faq_response', '_mxffi_faq_response_sent');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mxffi_user_name', '_mxffi_user_email', '_mxffi_faq_response', '_mxffi_faq_response_sent');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mxffi_user_name', '_mxffi_user_email', '_mxffi_faq_response', '_mxffi_faq_response_sent');

