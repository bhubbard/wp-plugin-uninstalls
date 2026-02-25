-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pass_protect_all_select_types', 'pass_protect_all_pass_field');

