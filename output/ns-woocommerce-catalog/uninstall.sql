-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcatalog_reviews_installed_on', 'wcatalog_total_open_count', 'wcf_enabled_plugin', 'wcf_hide_cart_button_single_product', 'wcf_hide_cart_button_all_product', 'wcf_hide_cart_checkout_page', 'wcf_show_more_info_button');
DELETE FROM wp_options WHERE option_name LIKE 'pe-plugin-id-response-%';
DELETE FROM wp_options WHERE option_name LIKE 'plugineye_init%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wcatalog_reviews_dismissed_triggers', '_wcatalog_reviews_last_dismissed', '_wcatalog_reviews_already_did');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wcatalog_reviews_dismissed_triggers', '_wcatalog_reviews_last_dismissed', '_wcatalog_reviews_already_did');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wcatalog_reviews_dismissed_triggers', '_wcatalog_reviews_last_dismissed', '_wcatalog_reviews_already_did');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wcatalog_reviews_dismissed_triggers', '_wcatalog_reviews_last_dismissed', '_wcatalog_reviews_already_did');

