-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dropdown_query', 'dropdown_allowlinkback', 'dropdown_configmode', 'dropdown_use', 'dropdown_autoembed', 'dropdown_width', 'dropdown_uselegacy');

