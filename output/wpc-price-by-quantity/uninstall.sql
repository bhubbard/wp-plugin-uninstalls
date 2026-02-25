-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcpq_settings', 'wpcpq_prices', 'wpcpq_localization', 'wpclever_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'wpcpq_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpcpq_enable', 'wpcpq_prices');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpcpq_enable', 'wpcpq_prices');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpcpq_enable', 'wpcpq_prices');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpcpq_enable', 'wpcpq_prices');

