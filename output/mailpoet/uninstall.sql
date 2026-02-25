-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('is_customer_note', '_wp_page_template', '_wp_attachment_image_alt', 'woocommerce_email_theme');
DELETE FROM wp_usermeta WHERE meta_key IN ('is_customer_note', '_wp_page_template', '_wp_attachment_image_alt', 'woocommerce_email_theme');
DELETE FROM wp_termmeta WHERE meta_key IN ('is_customer_note', '_wp_page_template', '_wp_attachment_image_alt', 'woocommerce_email_theme');
DELETE FROM wp_commentmeta WHERE meta_key IN ('is_customer_note', '_wp_page_template', '_wp_attachment_image_alt', 'woocommerce_email_theme');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%';

