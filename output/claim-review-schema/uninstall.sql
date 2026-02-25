-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cr-post-types', 'cr-organisation-name', 'cr-organisation-url', 'cr-organisation-max-number-rating', 'cr-organisation-min-number-rating', 'cr-organisation-alternate-url');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_fullfact_all_claims');
DELETE FROM wp_usermeta WHERE meta_key IN ('_fullfact_all_claims');
DELETE FROM wp_termmeta WHERE meta_key IN ('_fullfact_all_claims');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_fullfact_all_claims');

