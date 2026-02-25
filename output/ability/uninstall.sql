-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ability_a11y_settings', 'ability_a11y_statement_page_id', 'ability_settings', 'ability_wizard_done', 'ability_wizard_settings', 'ability_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'ability_daily_scans_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template');

