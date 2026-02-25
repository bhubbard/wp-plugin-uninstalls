-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tg_testimonials_company_logo', 'tg_client-name', 'tg_designation', 'tg_website-url', 'tg_rating');
DELETE FROM wp_usermeta WHERE meta_key IN ('tg_testimonials_company_logo', 'tg_client-name', 'tg_designation', 'tg_website-url', 'tg_rating');
DELETE FROM wp_termmeta WHERE meta_key IN ('tg_testimonials_company_logo', 'tg_client-name', 'tg_designation', 'tg_website-url', 'tg_rating');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tg_testimonials_company_logo', 'tg_client-name', 'tg_designation', 'tg_website-url', 'tg_rating');

