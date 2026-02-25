-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cbxchangelog_version', 'cbxchangelog_flush_rewrite_rules', 'cbxchangelog_upgraded_notice', 'cbxchangelog_activated_notice', 'cbxchangelog_proaddon_deactivated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cbxchangelog', '_cbxchangelog_extra');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cbxchangelog', '_cbxchangelog_extra');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cbxchangelog', '_cbxchangelog_extra');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cbxchangelog', '_cbxchangelog_extra');

