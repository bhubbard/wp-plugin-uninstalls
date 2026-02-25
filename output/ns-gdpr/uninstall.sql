-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ns-gdpr-enable-comments', 'ns-gdpr-comments-checkbox-text', 'ns-gdpr-comments-checkbox-error-text', 'ns-gdpr-enable-cf7', 'ns-gdpr-enable-cf7-text', 'ns-gdpr-enable-cf7-error-text', 'test_validate_cf7', 'test_validate_cf7_2', 'ns-gdpr-enable-wc', 'ns-gdpr-enable-wc-text', 'ns-gdpr-enable-wc-error-text');
DELETE FROM wp_options WHERE option_name LIKE 'pe-plugin-id-response-%';
DELETE FROM wp_options WHERE option_name LIKE 'plugineye_init%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_form');
DELETE FROM wp_usermeta WHERE meta_key IN ('_form');
DELETE FROM wp_termmeta WHERE meta_key IN ('_form');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_form');

