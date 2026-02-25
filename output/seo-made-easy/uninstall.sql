-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('seomadeeasy_keywords', 'seomadeeasy_description', 'seomadeeasy_canonical', 'seomadeeasy_noindex', 'seomadeeasy_primary');
DELETE FROM wp_usermeta WHERE meta_key IN ('seomadeeasy_keywords', 'seomadeeasy_description', 'seomadeeasy_canonical', 'seomadeeasy_noindex', 'seomadeeasy_primary');
DELETE FROM wp_termmeta WHERE meta_key IN ('seomadeeasy_keywords', 'seomadeeasy_description', 'seomadeeasy_canonical', 'seomadeeasy_noindex', 'seomadeeasy_primary');
DELETE FROM wp_commentmeta WHERE meta_key IN ('seomadeeasy_keywords', 'seomadeeasy_description', 'seomadeeasy_canonical', 'seomadeeasy_noindex', 'seomadeeasy_primary');

