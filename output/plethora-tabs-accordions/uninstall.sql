-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('plethoraplugins_pro_tabs_faq_notice_dismissed', 'plethoraplugins_tabs_options');

