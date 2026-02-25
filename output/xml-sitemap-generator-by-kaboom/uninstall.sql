-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sitemap_generator_by_kaboom_license', 'sitemap_generator_exclude_ids', 'sitemap_generator_exclude_post_types', 'form_email_catcher_by_kaboom_activated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('leave_a_review_sitemap_kaboom_');
DELETE FROM wp_usermeta WHERE meta_key IN ('leave_a_review_sitemap_kaboom_');
DELETE FROM wp_termmeta WHERE meta_key IN ('leave_a_review_sitemap_kaboom_');
DELETE FROM wp_commentmeta WHERE meta_key IN ('leave_a_review_sitemap_kaboom_');

