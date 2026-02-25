-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('testimonial-moving-creator-role', 'testimonial-moving-error-handling', 'testimonial-moving-hide-fontawesome', 'testimonial-moving-archive-slug', 'testimonial-moving-custom-css');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_timeout', '_speed', '_fx', '_shuffle', '_verticalalign', '_prevnext', '_limit', '_itemreviewed', '_template', '_img_size', '_title_heading', '_hidefeaturedimage', '_hide_microdata', '_hide_title', '_hide_stars', '_hide_body', '_hide_author', '_hide_company', '_template_id', '_rating', '_author_name', '_company', '_excerpt_length');
DELETE FROM wp_usermeta WHERE meta_key IN ('_timeout', '_speed', '_fx', '_shuffle', '_verticalalign', '_prevnext', '_limit', '_itemreviewed', '_template', '_img_size', '_title_heading', '_hidefeaturedimage', '_hide_microdata', '_hide_title', '_hide_stars', '_hide_body', '_hide_author', '_hide_company', '_template_id', '_rating', '_author_name', '_company', '_excerpt_length');
DELETE FROM wp_termmeta WHERE meta_key IN ('_timeout', '_speed', '_fx', '_shuffle', '_verticalalign', '_prevnext', '_limit', '_itemreviewed', '_template', '_img_size', '_title_heading', '_hidefeaturedimage', '_hide_microdata', '_hide_title', '_hide_stars', '_hide_body', '_hide_author', '_hide_company', '_template_id', '_rating', '_author_name', '_company', '_excerpt_length');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_timeout', '_speed', '_fx', '_shuffle', '_verticalalign', '_prevnext', '_limit', '_itemreviewed', '_template', '_img_size', '_title_heading', '_hidefeaturedimage', '_hide_microdata', '_hide_title', '_hide_stars', '_hide_body', '_hide_author', '_hide_company', '_template_id', '_rating', '_author_name', '_company', '_excerpt_length');

