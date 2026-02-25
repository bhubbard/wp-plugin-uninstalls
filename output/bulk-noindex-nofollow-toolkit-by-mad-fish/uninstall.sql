-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bnitk_mfd_meta-robots-noindex', '_bnitk_mfd_meta-robots-nofollow', 'rank_math_robots');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bnitk_mfd_meta-robots-noindex', '_bnitk_mfd_meta-robots-nofollow', 'rank_math_robots');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bnitk_mfd_meta-robots-noindex', '_bnitk_mfd_meta-robots-nofollow', 'rank_math_robots');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bnitk_mfd_meta-robots-noindex', '_bnitk_mfd_meta-robots-nofollow', 'rank_math_robots');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_bnitk_mfd_meta-robots-%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_bnitk_mfd_meta-robots-%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_bnitk_mfd_meta-robots-%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_bnitk_mfd_meta-robots-%';

