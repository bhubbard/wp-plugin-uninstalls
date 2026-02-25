-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sf_forms_settings', 'dismissed-notice-upgrade-sffp-cww-pro');
DELETE FROM wp_options WHERE option_name LIKE 'dismissed-%';

