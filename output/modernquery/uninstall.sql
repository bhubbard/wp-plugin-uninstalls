-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('modernquery_boost_field_name', 'modernquery_domain_name', 'modernquery_property_key', 'modernquery_search_input_selector');

