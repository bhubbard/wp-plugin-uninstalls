-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dspilot_options', 'dspilot_shipping_zones', 'dspilot_wc_countries', 'dspilot_wc_states', 'dspilot_wc_product_variations');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '_dspilot_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_dspilot_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_dspilot_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_dspilot_errors_%';

