-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dentalprime_faq_title', 'dentalprime_testimonials_title');

