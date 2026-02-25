-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gmwrpm_enable', 'gmwrpm_hide_unpurchase', 'gmwrpm_layout', 'gmwrpm_showchoose', 'gmwrpm_showimg', 'gmwrpm_showdesc');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gmwrpm_condintal_data', 'gmwrpm_payment_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('gmwrpm_condintal_data', 'gmwrpm_payment_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('gmwrpm_condintal_data', 'gmwrpm_payment_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gmwrpm_condintal_data', 'gmwrpm_payment_data');

