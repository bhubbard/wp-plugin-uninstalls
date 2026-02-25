-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gmptpkey', '_gmptp_exclude_post_option', '_gmptp_exclude_term_option');
DELETE FROM wp_usermeta WHERE meta_key IN ('gmptpkey', '_gmptp_exclude_post_option', '_gmptp_exclude_term_option');
DELETE FROM wp_termmeta WHERE meta_key IN ('gmptpkey', '_gmptp_exclude_post_option', '_gmptp_exclude_term_option');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gmptpkey', '_gmptp_exclude_post_option', '_gmptp_exclude_term_option');

