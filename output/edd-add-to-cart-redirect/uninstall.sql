-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_edd_actr_redirect_to_checkout', '_edd_atcr_redirect_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_edd_actr_redirect_to_checkout', '_edd_atcr_redirect_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_edd_actr_redirect_to_checkout', '_edd_atcr_redirect_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_edd_actr_redirect_to_checkout', '_edd_atcr_redirect_id');

