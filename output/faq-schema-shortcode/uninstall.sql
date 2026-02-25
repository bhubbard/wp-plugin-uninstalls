-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('faq_schema_shortcode_dogbytemarketing_settings');

