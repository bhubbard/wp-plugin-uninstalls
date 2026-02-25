-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('elite-notification_o_APBD_notification_setting', 'apbd_snlf_nt', 'elite-notification_o_APBD_notification_source', '_appsbd_slnf_sulog', 'active_sitewide_plugins', 'health-check-allowed-plugins', '__slnf_load_requrie');
DELETE FROM wp_options WHERE option_name LIKE 'apbd_prov_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_edd_payment_meta', 'rating', 'xs_public_review_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_edd_payment_meta', 'rating', 'xs_public_review_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_edd_payment_meta', 'rating', 'xs_public_review_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_edd_payment_meta', 'rating', 'xs_public_review_data');

