-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cleancodenzexlp_customfield_name', 'cleancodenzexlp_customfield_value', 'cleancodenzexlp_notinsearch', 'cleancodenzexlp_notinsearch_only');

