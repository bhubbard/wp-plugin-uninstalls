-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fmtcdisclose_options', 'fmtc_affiliate_disclosure_text');

