-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ci_unsafe_widgets_shortcodes', 'ci_unsafe_widgets_php', 'ci_unsafe_ignore_keys', 'ci_unsafe_keys', 'ci_code_injection_allow_shortcode', 'ci_code_injection_cache_max_age', 'ci_code_injection_db_version', 'ci_code_injection_role_version', 'ci_role_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('code_options', 'code_slug');
DELETE FROM wp_usermeta WHERE meta_key IN ('code_options', 'code_slug');
DELETE FROM wp_termmeta WHERE meta_key IN ('code_options', 'code_slug');
DELETE FROM wp_commentmeta WHERE meta_key IN ('code_options', 'code_slug');

