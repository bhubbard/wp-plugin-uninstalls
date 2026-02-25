-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('arastoo_cpt_title', 'arastoo_cpt_title_two', 'arastoo_cpt_slug', 'arastoo_cpt_slug_two');

