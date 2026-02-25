-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cirvgu_debug_mode', 'cirvgu_debug_log', 'cirvgu_rating_notice_installed', 'cirvgu_scan_results', 'cirvgu_last_scan_time', 'cirvgu_enable_alt_text_check', 'cirvgu_enable_heading_check', 'cirvgu_enable_contrast_check', 'cirvgu_enable_form_label_check', 'cirvgu_enable_link_text_check', 'cirvgu_rating_notice_dismissed');

