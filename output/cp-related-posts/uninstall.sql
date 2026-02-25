-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cprp_settings');
DELETE FROM wp_options WHERE option_name LIKE 'codepeople_promote_banner_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cprp_exclude_from_posts', 'cprp_hide_related_posts', 'cprp_tags', 'cprp_manually_related');
DELETE FROM wp_usermeta WHERE meta_key IN ('cprp_exclude_from_posts', 'cprp_hide_related_posts', 'cprp_tags', 'cprp_manually_related');
DELETE FROM wp_termmeta WHERE meta_key IN ('cprp_exclude_from_posts', 'cprp_hide_related_posts', 'cprp_tags', 'cprp_manually_related');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cprp_exclude_from_posts', 'cprp_hide_related_posts', 'cprp_tags', 'cprp_manually_related');

