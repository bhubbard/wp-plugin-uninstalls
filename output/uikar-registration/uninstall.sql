-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('landing_page_id', 'email_content');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('validity_duration', 'tel', 'Mobile', 'has_to_be_activated');
DELETE FROM wp_usermeta WHERE meta_key IN ('validity_duration', 'tel', 'Mobile', 'has_to_be_activated');
DELETE FROM wp_termmeta WHERE meta_key IN ('validity_duration', 'tel', 'Mobile', 'has_to_be_activated');
DELETE FROM wp_commentmeta WHERE meta_key IN ('validity_duration', 'tel', 'Mobile', 'has_to_be_activated');

