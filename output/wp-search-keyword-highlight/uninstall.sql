-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('of_template', 'of_options', 'of_shortname', 'skh_turn_on', 'skh_bgcolor', 'skh_color', 'skh_custom_css');

