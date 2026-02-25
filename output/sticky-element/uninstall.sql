-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sticky_element', 'sticky_element_end', 'sticky_element_max');

