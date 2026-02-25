-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fqaas_enable_faq_alias', 'fqaas_enable_schema', 'fqaas_theme_styles', 'fqaas_custom_css');

