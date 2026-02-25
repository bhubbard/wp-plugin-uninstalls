-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('best_testimonial_options', 'i13_default_form_options', 'best_testimonial_slider_messages');

