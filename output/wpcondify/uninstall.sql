-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcondify_log');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('condify_condition_relation', 'wpcondify_meta', 'wpcondify_condition_name', 'wpcondify_woo_condition');
DELETE FROM wp_usermeta WHERE meta_key IN ('condify_condition_relation', 'wpcondify_meta', 'wpcondify_condition_name', 'wpcondify_woo_condition');
DELETE FROM wp_termmeta WHERE meta_key IN ('condify_condition_relation', 'wpcondify_meta', 'wpcondify_condition_name', 'wpcondify_woo_condition');
DELETE FROM wp_commentmeta WHERE meta_key IN ('condify_condition_relation', 'wpcondify_meta', 'wpcondify_condition_name', 'wpcondify_woo_condition');

