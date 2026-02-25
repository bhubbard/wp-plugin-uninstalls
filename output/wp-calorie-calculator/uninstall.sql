-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcc-title-hide', 'wpcc-title-show', 'wpcc-title-text', 'wpcc-metric-system', 'wpcc-instant-result', 'wpcc-notification-email', 'wpcc-primary-color', 'wpcc-secondary-color', 'wpcc_user_agreements', 'wpcc_privacy_policy', 'wpcc_privacy_policy_url', 'wpcc_privacy_policy_url_text', 'wpcc_terms_and_conditions', 'wpcc_terms_and_conditions_url', 'wpcc_terms_and_conditions_url_text', 'wpcc_user_agreements_text', 'wpcc_enable_zapier', 'wpcc_zapier_webhook', 'wpcc_hide_credits', 'wpcc_pro_version_announcement', 'wpcc_pro_version_advertisement', 'wp_calorie_calculator_activation_notice', 'wpcc_pro_deactivate');

