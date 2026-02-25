-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sclfo_information_bar_data', 'sclfo_smart_content_link_data');

