-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('primary', 'hightlight', 'midGrey', 'messageText', 'messageBackground', 'error', 'borderRadius', 'fontSize', 'placeholder_colour', 'label_top', 'label_left', 'translateY');

