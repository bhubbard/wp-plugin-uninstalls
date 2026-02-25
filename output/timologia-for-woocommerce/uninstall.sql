-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tfwc_settings_tab_timologia_comp_move', 'tfwc_settings_tab_timologia_tim_move');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_billing_timologio');
DELETE FROM wp_usermeta WHERE meta_key IN ('_billing_timologio');
DELETE FROM wp_termmeta WHERE meta_key IN ('_billing_timologio');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_billing_timologio');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_billing_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_billing_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_billing_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_billing_%';

