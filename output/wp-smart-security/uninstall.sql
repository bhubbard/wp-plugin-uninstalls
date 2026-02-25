-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('si_captcha', 'bitset_wpspro', 'si_captcha_comment', 'wpspro_file_log', 'wpspro_intrusion_warning', 'WPSPRO_options', 'WPSPRO_Login_Slug', 'WPSPRO_versions', 'wpspro_filecheck', 'wpspro_awaymode', 'wpspro_away', 'bitset_wpspro_backup');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpspro_enable_ssl');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpspro_enable_ssl');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpspro_enable_ssl');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpspro_enable_ssl');

