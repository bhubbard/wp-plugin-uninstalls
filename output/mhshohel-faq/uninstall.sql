-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('faq_custom_text', 'count', 'icon_style', 'load_place', 'faq_acc_custom_css', 'is_mhshohel_faq_activated');

