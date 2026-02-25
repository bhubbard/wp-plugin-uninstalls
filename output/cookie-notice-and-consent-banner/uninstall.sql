-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cncb_show_banner', 'cncb_custom_css', 'cncb_refuse_code', 'cncb_refuse_code_body', 'cncb_by_scroll', 'cncb_by_click', 'cncb_by_delay', 'cncb_refreshonallow', 'cncb_by_scroll_value', 'cncb_by_delay_value', 'cncb_admin_notice');

