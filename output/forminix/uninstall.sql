-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('forminix_modules', 'forminix_forms', 'forminix_form_settings', 'forminix_entries', 'forminix_entry_settings');

