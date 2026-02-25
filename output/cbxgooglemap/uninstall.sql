-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cbxgooglemap_general', 'cbxgooglemap_flush_rewrite_rules', 'cbxgooglemap_version', 'cbxgooglemap_activated_notice', 'cbxgooglemap_upgraded_notice', 'cbxgooglemap_proaddon_deactivated', 'cbxgooglemap_flush_rewrite_rules');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%lat';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%lat';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%lat';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%lat';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%lng';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%lng';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%lng';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%lng';

