-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('multi-emails-woocommerce-recipients', 'multi_email_woocommerce_settings', 'addtional_email_recipients_settings', 'multi_emails_woocommerce_hide_feedback_notice', 'multi_emails_woocommerce_installed_on');

