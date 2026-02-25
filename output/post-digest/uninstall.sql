-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wrpdig_version', 'wrpdig_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'wrpdig_session_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wrpdig_prompt', 'wrpdig_language', 'wrpdig_custom', 'wrpdig_ip');
DELETE FROM wp_usermeta WHERE meta_key IN ('wrpdig_prompt', 'wrpdig_language', 'wrpdig_custom', 'wrpdig_ip');
DELETE FROM wp_termmeta WHERE meta_key IN ('wrpdig_prompt', 'wrpdig_language', 'wrpdig_custom', 'wrpdig_ip');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wrpdig_prompt', 'wrpdig_language', 'wrpdig_custom', 'wrpdig_ip');

