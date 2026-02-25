-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('de_acfpoftao_version', 'de_acfpoftao_enable', 'de_acfpoftao_append_field', 'de_acfpoftao_append_field_format', 'acf_version');

