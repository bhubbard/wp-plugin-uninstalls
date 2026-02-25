-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stars_testimonials_update_message', 'stars_testimonail_plugin_redirection', 'hide_testirecommended_plugin');
DELETE FROM wp_options WHERE option_name LIKE '%_hide_review_box';
DELETE FROM wp_options WHERE option_name LIKE '%_show_review_box_after';
DELETE FROM wp_options WHERE option_name LIKE '%_hide_upgrade_box';
DELETE FROM wp_options WHERE option_name LIKE '%_show_upgrade_box_after';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('testimonial_company_name', 'testimonial_company_url', 'testimonial_stars');
DELETE FROM wp_usermeta WHERE meta_key IN ('testimonial_company_name', 'testimonial_company_url', 'testimonial_stars');
DELETE FROM wp_termmeta WHERE meta_key IN ('testimonial_company_name', 'testimonial_company_url', 'testimonial_stars');
DELETE FROM wp_commentmeta WHERE meta_key IN ('testimonial_company_name', 'testimonial_company_url', 'testimonial_stars');

