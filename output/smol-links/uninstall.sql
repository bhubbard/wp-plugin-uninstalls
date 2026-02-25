-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smol_links_options', 'smol_links_error', 'smol_links_info');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('smol_links_long_url', 'smol_links_short_url', 'smol_links_short_code');
DELETE FROM wp_usermeta WHERE meta_key IN ('smol_links_long_url', 'smol_links_short_url', 'smol_links_short_code');
DELETE FROM wp_termmeta WHERE meta_key IN ('smol_links_long_url', 'smol_links_short_url', 'smol_links_short_code');
DELETE FROM wp_commentmeta WHERE meta_key IN ('smol_links_long_url', 'smol_links_short_url', 'smol_links_short_code');

