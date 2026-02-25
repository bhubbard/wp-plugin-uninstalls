-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('formtoemail_shortcodes_list');
DELETE FROM wp_options WHERE option_name LIKE 'formtoemail_shortcodes-%';

