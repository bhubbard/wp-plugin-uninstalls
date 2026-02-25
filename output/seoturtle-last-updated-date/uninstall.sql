-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('seoturtlelud_date_format', 'seoturtlelud_show_prefix', 'seoturtlelud_prefix_text');

