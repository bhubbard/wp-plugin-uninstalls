-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_tml_dismissed_notices', 'theme_my_login', 'tml_login_type', '_tml_installed_at', '_tml_updated_at', '_tml_previous_version', '_tml_version', 'tml_ajax', 'tml_registration_type', 'tml_user_passwords', 'tml_auto_login', 'rewrite_rules', 'illegal_names', 'registration', 'tml_use_permalinks', 'settings_errors');
DELETE FROM wp_options WHERE option_name LIKE '%_slug';

