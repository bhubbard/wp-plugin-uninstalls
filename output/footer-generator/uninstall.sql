-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('item1-link', 'item1-icon', 'item1-title', 'item2-link', 'item2-icon', 'item2-title', 'item3-link', 'item3-icon', 'item3-title', 'item4-link', 'item4-icon', 'item4-title', 'item5-link', 'item5-icon', 'item5-title', 'text-size', 'icon-color', 'background-color', 'show-after', 'padding-top-bottom', 'item1-select', 'item2-select', 'item3-select', 'item4-select', 'item5-select', 'view-port-size', 'disabled-footer');

