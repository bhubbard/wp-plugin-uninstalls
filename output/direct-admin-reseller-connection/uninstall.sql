-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('darc_nh_dashboard', 'darc_nh_adresse', 'darc_nh_port', 'darc_nh_account', 'darc_nh_key', 'darc_nh_currency', 'darc_nh_priceperiode', 'darc_nh_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('darc_nh_daid');
DELETE FROM wp_usermeta WHERE meta_key IN ('darc_nh_daid');
DELETE FROM wp_termmeta WHERE meta_key IN ('darc_nh_daid');
DELETE FROM wp_commentmeta WHERE meta_key IN ('darc_nh_daid');

