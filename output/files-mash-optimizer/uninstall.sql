-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_filesmash_options', 'filesmash_activation_redirect', '_filesmash_api_status', '_filesmash_first_opt_images', 'filesmash_db_version', 'cloudflare_api_email', 'cloudflare_api_key', 'cloudflare_cached_domain_name');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_filesmash_size', '_filesmash_ignore_notices', '_cheetaho_ignore_notices');
DELETE FROM wp_usermeta WHERE meta_key IN ('_filesmash_size', '_filesmash_ignore_notices', '_cheetaho_ignore_notices');
DELETE FROM wp_termmeta WHERE meta_key IN ('_filesmash_size', '_filesmash_ignore_notices', '_cheetaho_ignore_notices');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_filesmash_size', '_filesmash_ignore_notices', '_cheetaho_ignore_notices');

