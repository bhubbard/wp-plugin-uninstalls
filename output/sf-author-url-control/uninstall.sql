-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sf_auc_first_message', 'author_base', 'settings_errors');

