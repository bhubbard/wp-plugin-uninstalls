-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_rtp_currency_rates');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_edd_user_contact_info');
DELETE FROM wp_usermeta WHERE meta_key IN ('_edd_user_contact_info');
DELETE FROM wp_termmeta WHERE meta_key IN ('_edd_user_contact_info');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_edd_user_contact_info');

