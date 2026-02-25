-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lnp_general', 'lnp_connection', 'lnp_paywall');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bln_amount_received', '_lnp_ln_address');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bln_amount_received', '_lnp_ln_address');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bln_amount_received', '_lnp_ln_address');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bln_amount_received', '_lnp_ln_address');

