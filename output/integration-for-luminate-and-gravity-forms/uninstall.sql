-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gravityforms-luminate_constituent_fields', 'gravityforms-luminate_luminate_groups');

