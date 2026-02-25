-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('widgetwo', 'widgetwas', 'titlecolor', 'titlebgcolor', 'textcolor', 'textbgcolor', 'buttoncolor', 'buttonbgcolor');

