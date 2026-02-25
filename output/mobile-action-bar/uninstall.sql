-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mobi_actionbar_global_logo', 'mobi_actionbar_global_button_text', 'mobi_actionbar_global_action_link');

