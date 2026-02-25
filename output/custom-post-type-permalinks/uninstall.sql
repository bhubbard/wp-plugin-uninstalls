-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('no_taxonomy_structure', 'add_post_type_for_tax', 'cptp_permalink_checked', 'queue_flush_rules', 'cptp_version');
DELETE FROM wp_options WHERE option_name LIKE '%_structure';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dismissed_wp_pointers');
DELETE FROM wp_usermeta WHERE meta_key IN ('dismissed_wp_pointers');
DELETE FROM wp_termmeta WHERE meta_key IN ('dismissed_wp_pointers');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dismissed_wp_pointers');

