-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('genesis_simple_share_sort');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_disable_gss', '_gss_alternate_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_disable_gss', '_gss_alternate_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_disable_gss', '_gss_alternate_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_disable_gss', '_gss_alternate_url');

