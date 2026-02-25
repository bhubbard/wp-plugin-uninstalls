-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_mailpoet_segment_list', 'wc_mailpoet_subscription_position', 'wc_mailpoet_double_optin', 'wc_mailpoet_uninstall_data');
DELETE FROM wp_options WHERE option_name LIKE '%_enable_subscription';
DELETE FROM wp_options WHERE option_name LIKE '%_subscription_position';
DELETE FROM wp_options WHERE option_name LIKE '%_gdpr_show_unsubscribe';
DELETE FROM wp_options WHERE option_name LIKE '%_gdpr_unsubscribe_label';
DELETE FROM wp_options WHERE option_name LIKE '%_checkbox_status';
DELETE FROM wp_options WHERE option_name LIKE '%_multi_subscription';
DELETE FROM wp_options WHERE option_name LIKE '%_show_gdpr_consent';
DELETE FROM wp_options WHERE option_name LIKE '%_gdpr_subscription_consent_text';
DELETE FROM wp_options WHERE option_name LIKE '%_checkout_label';

