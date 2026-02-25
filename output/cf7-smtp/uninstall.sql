-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cf7-smtp-options', 'cf7-smtp-report', 'cf7_smtp_testing', 'cf7_smtp_testing_error', 'cf7_smtp_testing_log');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cf7_smtp_hide_welcome_panel_on');
DELETE FROM wp_usermeta WHERE meta_key IN ('cf7_smtp_hide_welcome_panel_on');
DELETE FROM wp_termmeta WHERE meta_key IN ('cf7_smtp_hide_welcome_panel_on');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cf7_smtp_hide_welcome_panel_on');

