-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lknFraudDetectionForWoocommerceEnableRecaptcha', 'lknFraudDetectionForWoocommercegoogleRecaptchaV3Key', 'lknFraudDetectionForWoocommerceGoogleRecaptchaV3Score', 'lknFraudDetectionForWoocommerceGoogleRecaptchaV3Secret', 'lknFraudDetectionForWoocommerceDebug');
DELETE FROM wp_options WHERE option_name LIKE '%EnableRecaptcha';
DELETE FROM wp_options WHERE option_name LIKE '%RecaptchaSelected';

