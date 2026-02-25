-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fv_antispam_ver', 'fv_antispam', 'fv_antispam_filledin_conflict', 'fv_antispam_faqtastic', 'wordpress_api_key', 'fv_antispam_registrations', 'jetpack_active_modules', 'plugin_slugs');
DELETE FROM wp_options WHERE option_name LIKE '%_deferred_notices';
DELETE FROM wp_options WHERE option_name LIKE '%_deferred_errors';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('fv-antispam', 'fv_antispam_debug', 'fv-antispam-post', 'fv-antispam-server');
DELETE FROM wp_usermeta WHERE meta_key IN ('fv-antispam', 'fv_antispam_debug', 'fv-antispam-post', 'fv-antispam-server');
DELETE FROM wp_termmeta WHERE meta_key IN ('fv-antispam', 'fv_antispam_debug', 'fv-antispam-post', 'fv-antispam-server');
DELETE FROM wp_commentmeta WHERE meta_key IN ('fv-antispam', 'fv_antispam_debug', 'fv-antispam-post', 'fv-antispam-server');

