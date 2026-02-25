-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dazz_cs_contact', 'dazz_cs_dashboard', 'dazz_cs_design', 'dazz_cs_seo', 'dazz_cs_social');

