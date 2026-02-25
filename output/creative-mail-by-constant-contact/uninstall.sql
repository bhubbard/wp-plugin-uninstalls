-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ce4wp_activated', 'ce4wp_install_date', 'ce4wp_activation_redirect', 'ce4wp_ignore_review_notice', 'ce4wp_admin_footer_text_rated', 'woocommerce_onboarding_profile', 'woocommerce_email_from_address', 'woocommerce_email_from_name', 'password_protected_status');
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

