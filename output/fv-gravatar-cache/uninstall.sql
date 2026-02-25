-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fv_gravatar_cache', 'fv_gravatar_cache_nag', 'fv_gravatar_cache_directory_changed', 'fv_gravatar_cache_offset');

