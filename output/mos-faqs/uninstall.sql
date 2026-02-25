-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mos_faq_option', 'mos_faq_do_activation_redirect');

