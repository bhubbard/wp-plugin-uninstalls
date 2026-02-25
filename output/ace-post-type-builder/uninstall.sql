-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cptb_custom_post_types', 'cptb_flush_rewrite_rules', 'cptb_custom_taxonomies');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cptb_notice_dismissed_at');
DELETE FROM wp_usermeta WHERE meta_key IN ('cptb_notice_dismissed_at');
DELETE FROM wp_termmeta WHERE meta_key IN ('cptb_notice_dismissed_at');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cptb_notice_dismissed_at');

