-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sidebars_widgets', 'CR_SCHEMA_VERSION', 'cleverreach_newsletter_settings');
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';

