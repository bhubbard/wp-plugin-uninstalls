-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jlplg_lovecoding-field1-cookie-message', 'jlplg_lovecoding-field3-cookie-button-text', 'jlplg_lovecoding-field2-checkbox-privacy-policy', 'jlplg_lovecoding-field5-background-color', 'jlplg_lovecoding-field6-text-color', 'jlplg_lovecoding-field7-button-background-color', 'jlplg_lovecoding-field8-button-text-color', 'jlplg_lovecoding-field4-cookie-plugin-placement', 'jlplg_lovecoding-field9-cookie-expire-time');

