-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('abb_reviews_installed_on', 'abb_total_open_count', 'ns-enable-ab', 'ns-redirect-ab', 'ns-redirect-ab-link', 'ns-ab-font-awesome', 'ns-ab-font-awesome-size', 'ns-ab-font-awesome-color', 'ns-ab-page-text', 'ns_ab_page');
DELETE FROM wp_options WHERE option_name LIKE 'pe-plugin-id-response-%';
DELETE FROM wp_options WHERE option_name LIKE 'plugineye_init%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_abb_reviews_dismissed_triggers', '_abb_reviews_last_dismissed', '_abb_reviews_already_did');
DELETE FROM wp_usermeta WHERE meta_key IN ('_abb_reviews_dismissed_triggers', '_abb_reviews_last_dismissed', '_abb_reviews_already_did');
DELETE FROM wp_termmeta WHERE meta_key IN ('_abb_reviews_dismissed_triggers', '_abb_reviews_last_dismissed', '_abb_reviews_already_did');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_abb_reviews_dismissed_triggers', '_abb_reviews_last_dismissed', '_abb_reviews_already_did');

