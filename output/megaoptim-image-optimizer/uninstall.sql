-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('megaoptim_instructions_hide', 'megaoptim_registration_email', 'cloudflare_api_email', 'cloudflare_api_key', 'cloudflare_cached_domain_name', 'megaoptim_db_version');
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_metadata', '_megaoptim_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_metadata', '_megaoptim_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_metadata', '_megaoptim_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_metadata', '_megaoptim_data');

