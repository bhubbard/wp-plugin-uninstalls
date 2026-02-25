-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gwx_testimonial_singular', 'gwx_testimonial_plural');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gwx_author', 'gwx_citation', 'gwx_photo', 'gwx_quote');
DELETE FROM wp_usermeta WHERE meta_key IN ('gwx_author', 'gwx_citation', 'gwx_photo', 'gwx_quote');
DELETE FROM wp_termmeta WHERE meta_key IN ('gwx_author', 'gwx_citation', 'gwx_photo', 'gwx_quote');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gwx_author', 'gwx_citation', 'gwx_photo', 'gwx_quote');

