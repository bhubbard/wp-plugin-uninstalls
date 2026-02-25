-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rw_cs_mode', 'rw_cs_background', 'rw_cs_button', 'rw_cs_content', 'rw_cs_countdown', 'rw_cs_description', 'rw_cs_fic', 'rw_cs_footer', 'rw_cs_heading', 'rw_cs_info', 'rw_cs_loader', 'rw_cs_logo', 'rw_cs_order', 'rw_cs_seo', 'rw_cs_social');

