-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('no-unsafe-inline_version', 'no-unsafe-inline', 'no-unsafe-inline-tools', 'no-unsafe-inline-base-rule', 'no-unsafe-inline-global-settings', 'no-unsafe-inline_db_version', 'no_unsafe_inline_admin_notice');

