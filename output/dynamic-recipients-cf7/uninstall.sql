-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cf7_dynamic_recipients_default_text', 'cf7_dynamic_recipients_settings');

