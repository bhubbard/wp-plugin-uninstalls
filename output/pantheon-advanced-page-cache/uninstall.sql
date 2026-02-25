-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pantheon-cache', 'pantheon_max_age_updated', 'papc_max_age_compare');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pantheon_max_age_global_warning_notice', 'pantheon_max_age_updated_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('pantheon_max_age_global_warning_notice', 'pantheon_max_age_updated_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('pantheon_max_age_global_warning_notice', 'pantheon_max_age_updated_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pantheon_max_age_global_warning_notice', 'pantheon_max_age_updated_notice');

