-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sede_cf7_blacklisted_domain');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('spam-email-excluded-domains-cf7');
DELETE FROM wp_usermeta WHERE meta_key IN ('spam-email-excluded-domains-cf7');
DELETE FROM wp_termmeta WHERE meta_key IN ('spam-email-excluded-domains-cf7');
DELETE FROM wp_commentmeta WHERE meta_key IN ('spam-email-excluded-domains-cf7');

