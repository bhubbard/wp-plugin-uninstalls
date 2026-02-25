-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hjqs_mentions_legales_options', 'hjqs_legal_notice', 'hjqs_privacy_policy', 'hjqs_terms_of_sales', 'hjqs_hjqs_legal_notice', 'hjqs_hjqs_privacy_policy', 'hjqs_hjqs_terms_of_sales');
DELETE FROM wp_options WHERE option_name LIKE 'hjqs_%';

