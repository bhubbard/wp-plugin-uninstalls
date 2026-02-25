-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wow-questionnaire_settings_options', 'wow-questionnaire_privacy_policy_options');
DELETE FROM wp_options WHERE option_name LIKE '%_settings_options';
DELETE FROM wp_options WHERE option_name LIKE '%_options';
DELETE FROM wp_options WHERE option_name LIKE '%_gdpr_options';
DELETE FROM wp_options WHERE option_name LIKE '%_privacy_policy_options';

