-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'e20r_im_error_msg', 'pmp_im_error_msg', 'e20r_import_has_donated', 'e20r_link_for_sponsor', 'e20r_import_errors', 'e20r_imesc_attr_error_msg', 'e20r_import_filename');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pmprosm_seats', 'pmprosm_sponsor');
DELETE FROM wp_usermeta WHERE meta_key IN ('pmprosm_seats', 'pmprosm_sponsor');
DELETE FROM wp_termmeta WHERE meta_key IN ('pmprosm_seats', 'pmprosm_sponsor');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pmprosm_seats', 'pmprosm_sponsor');

