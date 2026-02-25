-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simpremed_currency_symbol');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_simpremed_quantities', 'menu_order', 'simpremed_is_special');
DELETE FROM wp_usermeta WHERE meta_key IN ('_simpremed_quantities', 'menu_order', 'simpremed_is_special');
DELETE FROM wp_termmeta WHERE meta_key IN ('_simpremed_quantities', 'menu_order', 'simpremed_is_special');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_simpremed_quantities', 'menu_order', 'simpremed_is_special');

