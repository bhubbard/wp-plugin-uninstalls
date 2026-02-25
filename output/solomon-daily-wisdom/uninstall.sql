-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('solodawi_show_reference', 'solodawi_custom_heading', 'solodawi_top_bar');

