-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('s2p_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('short_url', 'fb_img', 'wpme_error', 'pingfm_error', 'pingfm_email', 'bitly_error', 'yourls_error', 'supr_error', 'isgd_error', 'cligs_error');
DELETE FROM wp_usermeta WHERE meta_key IN ('short_url', 'fb_img', 'wpme_error', 'pingfm_error', 'pingfm_email', 'bitly_error', 'yourls_error', 'supr_error', 'isgd_error', 'cligs_error');
DELETE FROM wp_termmeta WHERE meta_key IN ('short_url', 'fb_img', 'wpme_error', 'pingfm_error', 'pingfm_email', 'bitly_error', 'yourls_error', 'supr_error', 'isgd_error', 'cligs_error');
DELETE FROM wp_commentmeta WHERE meta_key IN ('short_url', 'fb_img', 'wpme_error', 'pingfm_error', 'pingfm_email', 'bitly_error', 'yourls_error', 'supr_error', 'isgd_error', 'cligs_error');

