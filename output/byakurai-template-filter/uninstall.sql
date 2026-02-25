-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('byakuraitmp_option', 'byakuraitmp_template_ids');

