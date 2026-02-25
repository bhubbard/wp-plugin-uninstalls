-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('faqconc_animation_speed', 'faqconc_hide_others', 'faqconc_width', 'faqconc_width_override', 'faqconc_colour_scheme', 'faqconc_custom_colour1', 'faqconc_custom_colour2', 'faqconc_negative', 'faqconc_corners', 'faqconc_indicators', 'faqconc_disable_styles', 'faqconc_order', 'faqconc_reverse', ' faqconc_order');

