-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shorten2ping_options');
DELETE FROM wp_options WHERE option_name LIKE 'shorten2ping_options_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('short_url', 'fb_img', 'pingfm_error', 'twitter_error', 'bitly_error', 'trim_error', 'yourls_error', 'supr_error', 'smsh_error');
DELETE FROM wp_usermeta WHERE meta_key IN ('short_url', 'fb_img', 'pingfm_error', 'twitter_error', 'bitly_error', 'trim_error', 'yourls_error', 'supr_error', 'smsh_error');
DELETE FROM wp_termmeta WHERE meta_key IN ('short_url', 'fb_img', 'pingfm_error', 'twitter_error', 'bitly_error', 'trim_error', 'yourls_error', 'supr_error', 'smsh_error');
DELETE FROM wp_commentmeta WHERE meta_key IN ('short_url', 'fb_img', 'pingfm_error', 'twitter_error', 'bitly_error', 'trim_error', 'yourls_error', 'supr_error', 'smsh_error');

