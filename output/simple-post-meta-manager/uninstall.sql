-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simple_pmm_replace_meta_key', 'simple_pmm_replace_old_meta_value', 'simple_pmm_replace_new_meta_value');

