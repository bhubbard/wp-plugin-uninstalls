-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('chatbot_faq_data', 'chatbot_faq_design_data', 'chatbot_faq_options');

