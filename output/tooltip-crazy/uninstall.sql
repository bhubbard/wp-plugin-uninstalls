-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tooltipcrazy_default_layout', 'tooltipcrazy_default_effect');

