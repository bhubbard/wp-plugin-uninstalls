-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ssl_quality_checker_settings', 'ssl_labs_inform_user');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ignore_ssl_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('ignore_ssl_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('ignore_ssl_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ignore_ssl_notice');

