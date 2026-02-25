-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('poeditor_apikey', 'poeditor_projects', 'poeditor_files', 'poeditor_languages', 'poeditor_assingments', 'poeditor_flash_messages', 'Activated_Plugin');

